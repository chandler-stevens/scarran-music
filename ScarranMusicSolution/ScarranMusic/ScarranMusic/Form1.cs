using System;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using System.Data;

namespace ScarranMusic
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private DataTable sqlQuery(string query)
        {
            string connectionString = @"Server=leia.cs.spu.edu;Database=stevensc3_db;Uid=stevensc3;Pwd=stevensc310$4410X;";
            MySqlConnection myConnection = new MySqlConnection(connectionString);
            myConnection.Open();
            MySqlCommand cmd = new MySqlCommand(query, myConnection);
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            myConnection.Close();
            return dt;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'scarranMusicDataSet.Label' table. You can move, or remove it, as needed.
            this.labelTableAdapter.Fill(this.scarranMusicDataSet.Label);
            // TODO: This line of code loads data into the 'scarranMusicDataSet.Concert' table. You can move, or remove it, as needed.
            this.concertTableAdapter.Fill(this.scarranMusicDataSet.Concert);
            // TODO: This line of code loads data into the 'scarranMusicDataSet.Playlist' table. You can move, or remove it, as needed.
            this.playlistTableAdapter.Fill(this.scarranMusicDataSet.Playlist);
            // TODO: This line of code loads data into the 'scarranMusicDataSet.Artist' table. You can move, or remove it, as needed.
            this.artistTableAdapter.Fill(this.scarranMusicDataSet.Artist);
            // TODO: This line of code loads data into the 'scarranMusicDataSet.Band' table. You can move, or remove it, as needed.
            this.bandTableAdapter.Fill(this.scarranMusicDataSet.Band);
            // TODO: This line of code loads data into the 'scarranMusicDataSet.Song' table. You can move, or remove it, as needed.
            this.songTableAdapter.Fill(this.scarranMusicDataSet.Song);
            // TODO: This line of code loads data into the 'scarranMusicDataSet.Album' table. You can move, or remove it, as needed.
            this.albumTableAdapter.Fill(this.scarranMusicDataSet.Album);

            dataGridView5.AutoGenerateColumns = true;
            dataGridView5.DataSource = sqlQuery(
                    @"SELECT Playlist.playlistID, playlistTitle, SEC_TO_TIME(SUM(TIME_TO_SEC(duration))) AS totalDuration
                        FROM Song
                        JOIN PlaylistSong ON PlaylistSong.songID = Song.songID
                        JOIN Playlist ON Playlist.playlistID = PlaylistSong.playlistID
                        GROUP BY Playlist.playlistID;");

            dataGridView10.DataSource = sqlQuery(
                @"SELECT Album.albumID, albumTitle, liveRecording
                    FROM Album
                    JOIN BandAlbum ON Album.albumID = BandAlbum.albumID
                    JOIN Band on BandAlbum.bandID = Band.bandID
                    WHERE Band.bandID = 1");

            dataGridView11.DataSource = sqlQuery(
                @"SELECT Song.songID, songTitle, duration, lyrics
                    FROM Song
                    JOIN BandSong ON Song.songID = BandSong.songID
                    JOIN Band on BandSong.bandID = Band.bandID
                    JOIN AlbumSong on AlbumSong.songID = Song.songID
                    WHERE Band.bandID = 1 AND AlbumSong.albumID = 1");
        }      

        private void updateSelection()
        {
            BindingSource bs = new BindingSource();
            bs.DataSource = dataGridView8.DataSource;

            if (comboBox2.SelectedItem.ToString() == "All")
            {
                bs.Filter += "CONVERT(" + dataGridView8.Columns[0].HeaderText + ", 'System.String') LIKE '%" + textBox1.Text + "%'";

                for (var i = 1; i < dataGridView8.ColumnCount; i++)
                {
                    bs.Filter += " OR CONVERT(" + dataGridView8.Columns[i].HeaderText + ", 'System.String') LIKE '%" + textBox1.Text + "%'";
                }
            }
            else
            {
                bs.Filter += "CONVERT(" + comboBox2.SelectedItem.ToString() + ", 'System.String') LIKE '%" + textBox1.Text + "%'";
            }

            dataGridView8.DataSource = bs;
        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            updateSelection();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            if (textBox1.TextLength > 0)
            {
                updateSelection();
            }
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            dataGridView8.AutoGenerateColumns = true;

            if (comboBox1.SelectedItem.ToString() == "Album(s)")
            {
                dataGridView8.DataSource = albumBindingSource;
            }
            else if (comboBox1.SelectedItem.ToString() == "Band(s)")
            {
                dataGridView8.DataSource = bandBindingSource;
            }
            else if (comboBox1.SelectedItem.ToString() == "Artist(s)")
            {
                dataGridView8.DataSource = artistBindingSource;
            }
            else if (comboBox1.SelectedItem.ToString() == "Playlist(s)")
            {
                dataGridView8.DataSource = playlistBindingSource;
            }
            else if (comboBox1.SelectedItem.ToString() == "Concert(s)")
            {
                dataGridView8.DataSource = concertBindingSource;
            }
            else if (comboBox1.SelectedItem.ToString() == "Label(s)")
            {
                dataGridView8.DataSource = labelBindingSource;
            }
            else
            {
                dataGridView8.DataSource = songBindingSource;
            }

            comboBox2.Items.Clear();
            System.Object[] ItemObject = new System.Object[dataGridView8.ColumnCount + 1];
            ItemObject[0] = "All";
            for (int i = 0; i < dataGridView8.ColumnCount; i++)
            {
                ItemObject[i + 1] = dataGridView8.Columns[i].HeaderText;
            }
            comboBox2.Items.AddRange(ItemObject);

            if (comboBox1.SelectedItem.ToString() == "Playlist(s)")
            {
                dataGridView8.DataSource = sqlQuery(
                    @"SELECT Playlist.playlistID, playlistTitle, SEC_TO_TIME(SUM(TIME_TO_SEC(duration))) AS totalDuration
                        FROM Song
                        JOIN PlaylistSong ON PlaylistSong.songID = Song.songID
                        JOIN Playlist ON Playlist.playlistID = PlaylistSong.playlistID
                        GROUP BY Playlist.playlistID;");
            }

            comboBox2.SelectedItem = "All";
        }

        private void dataGridView9_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            dataGridView10.DataSource = sqlQuery(
                @"SELECT Album.albumID, albumTitle, liveRecording
                    FROM Album
                    JOIN BandAlbum ON Album.albumID = BandAlbum.albumID
                    JOIN Band on BandAlbum.bandID = Band.bandID
                    WHERE Band.bandID = " + dataGridView9.CurrentRow.Cells[0].Value.ToString());

            dataGridView11.DataSource = sqlQuery(
                @"SELECT Song.songID, songTitle, duration, lyrics
                    FROM Song
                    JOIN BandSong ON Song.songID = BandSong.songID
                    JOIN Band on BandSong.bandID = Band.bandID
                    JOIN AlbumSong on AlbumSong.songID = Song.songID
                    WHERE Band.bandID = " + dataGridView9.CurrentRow.Cells[0].Value.ToString() +
                    " AND AlbumSong.albumID = " + dataGridView10.CurrentRow.Cells[0].Value.ToString());
        }

        private void dataGridView10_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            dataGridView11.DataSource = sqlQuery(
                @"SELECT Song.songID, songTitle, duration, lyrics
                    FROM Song
                    JOIN AlbumSong ON Song.songID = AlbumSong.songID
                    JOIN Album on AlbumSong.albumID = Album.albumID
                    WHERE Album.albumID = " + dataGridView10.CurrentRow.Cells[0].Value.ToString());
        }

        private void filterDrillDown(DataGridView dgv, TextBox tb)
        {
            BindingSource bs = new BindingSource();
            bs.DataSource = dgv.DataSource;

            bs.Filter += "CONVERT(" + dgv.Columns[0].HeaderText + ", 'System.String') LIKE '%" + tb.Text + "%'";

            for (var i = 1; i < dgv.ColumnCount; i++)
            {
                bs.Filter += " OR CONVERT(" + dgv.Columns[i].HeaderText + ", 'System.String') LIKE '%" + tb.Text + "%'";
            }

            dgv.DataSource = bs;
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            if (textBox2.TextLength > 0)
            {
                filterDrillDown(dataGridView9, textBox2);
                dataGridView9_CellClick(dataGridView9, 
                    new DataGridViewCellEventArgs(
                        dataGridView9.CurrentCell.ColumnIndex,
                        dataGridView9.CurrentRow.Index));
            }
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {
            if (textBox3.TextLength > 0)
            {
                filterDrillDown(dataGridView10, textBox3);
                dataGridView10_CellClick(dataGridView10,
                    new DataGridViewCellEventArgs(
                        dataGridView10.CurrentCell.ColumnIndex,
                        dataGridView10.CurrentRow.Index));
            }
        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {
            if (textBox4.TextLength > 0)
            {
                filterDrillDown(dataGridView11, textBox4);
            }
        }

        private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
        {
            textBox5.Text = "";
            dataGridView12.DataSource = null;
        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {
            dataGridView12.AutoGenerateColumns = true;

            if (comboBox3.SelectedItem.ToString() == "Which band or solo artist plays this song:")
            {
                dataGridView12.DataSource = sqlQuery(
                    @"SELECT bandName, songTitle
                        FROM Song
                        JOIN BandSong ON Song.songID = BandSong.songID
                        JOIN Band ON BandSong.bandID = Band.bandID
                        WHERE songTitle LIKE '%" + textBox5.Text + "%'");
            }
            else if (comboBox3.SelectedItem.ToString() == "Who are the members of this band:")
            {
                dataGridView12.DataSource = sqlQuery(
                    @"SELECT fName, lName, bandName
                        FROM Band
                        JOIN BandArtist ON Band.bandID = BandArtist.bandID
                        JOIN Artist ON BandArtist.artistID = Artist.artistID
                        WHERE bandName LIKE '%" + textBox5.Text + "%'");
            }
            else if (comboBox3.SelectedItem.ToString() == "What songs or albums are in this playlist or genre:")
            {
                dataGridView12.DataSource = sqlQuery(
                    @"SELECT songTitle, albumTitle, playlistTitle
                        FROM Song
                        JOIN PlaylistSong ON Song.songID = PlaylistSong.songID
                        JOIN Playlist ON PlaylistSong.playlistID = Playlist.playlistID
                        JOIN AlbumSong ON Song.songID = AlbumSong.songID
                        JOIN Album ON AlbumSong.albumID = Album.albumID
                        WHERE songTitle LIKE '%" + textBox5.Text + "%'" +
                        "OR albumTitle LIKE '%" + textBox5.Text + "%'");
            }
            else if (comboBox3.SelectedItem.ToString() == "What songs were played at this concert:")
            {
                dataGridView12.DataSource = sqlQuery(
                    @"SELECT songTitle, bandName, location, date
                        FROM Song
                        JOIN PlaylistSong ON Song.songID = PlaylistSong.songID
                        JOIN Playlist ON PlaylistSong.playlistID = Playlist.playlistID
                        JOIN BandSong ON Song.songID = BandSong.songID
                        JOIN Band ON BandSong.bandID = Band.bandID
                        JOIN Concert ON Playlist.playlistID = Concert.playlistID
                        WHERE bandName LIKE '%" + textBox5.Text + "%'" +
                        "OR location LIKE '%" + textBox5.Text + "%'" +
                        "OR date LIKE '%" + textBox5.Text + "%'");
            }
            else if (comboBox3.SelectedItem.ToString() == "Which concerts included this band or solo artist:")
            {
                dataGridView12.DataSource = sqlQuery(
                    @"SELECT location, date, bandName
                        FROM Concert
                        JOIN Playlist ON Concert.playlistID = Playlist.playlistID
                        JOIN PlaylistSong ON Playlist.playlistID = PlaylistSong.playlistID
                        JOIN Song ON PlaylistSong.songID = Song.songID
                        JOIN BandSong ON Song.songID = BandSong.songID
                        JOIN Band ON BandSong.bandID = Band.bandID
                        WHERE bandName LIKE '%" + textBox5.Text + "%'");
            }
            else if (comboBox3.SelectedItem.ToString() == "Which albums included this person:")
            {
                dataGridView12.DataSource = sqlQuery(
                    @"SELECT albumTitle, bandName, fName, lName
                        FROM Album
                        JOIN BandAlbum ON Album.albumID = BandAlbum.albumID
                        JOIN Band ON BandAlbum.bandID = Band.bandID
                        JOIN BandArtist ON Band.bandID = BandArtist.bandID
                        JOIN Artist ON BandArtist.artistID = Artist.artistID
                        WHERE fName LIKE '%" + textBox5.Text + "%'" +
                        "OR lName LIKE '%" + textBox5.Text + "%'");
            }
            else if (comboBox3.SelectedItem.ToString() == "Which record labels included this band:")
            {
                dataGridView12.DataSource = sqlQuery(
                    @"SELECT labelName, albumTitle, bandName
                        FROM Label
                        JOIN AlbumLabel ON Label.labelID = AlbumLabel.labelID
                        JOIN Album ON AlbumLabel.albumID = Album.albumID
                        JOIN BandAlbum ON Album.albumID = BandAlbum.albumID
                        JOIN Band ON BandAlbum.bandID = Band.bandID
                        WHERE bandName LIKE '%" + textBox5.Text + "%'");
            }
            else
            {
                dataGridView12.DataSource = songBindingSource;
            }

            if (textBox5.Text == "")
            {
                dataGridView12.DataSource = null;
            }
        }
    }
}
