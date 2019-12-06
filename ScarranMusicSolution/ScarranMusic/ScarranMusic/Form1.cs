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
            this.dataGridView8.AutoGenerateColumns = true;

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
                string connectionString = @"Server=leia.cs.spu.edu;Database=stevensc3_db;Uid=stevensc3;Pwd=stevensc310$4410X;";

                string commandText = @"SELECT Playlist.playlistID, Playlist.playlistTitle, SEC_TO_TIME(SUM(TIME_TO_SEC(Song.duration))) AS totalDuration
                                       FROM Song
                                       JOIN PlaylistSong ON PlaylistSong.songID = Song.songID
                                       JOIN Playlist ON Playlist.playlistID = PlaylistSong.playlistID
                                       GROUP BY Playlist.playlistID;";
                MySqlConnection myConnection = new MySqlConnection(connectionString);
                myConnection.Open();
                MySqlCommand objcmd = new MySqlCommand(commandText, myConnection);
                MySqlDataAdapter adp = new MySqlDataAdapter(objcmd);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                myConnection.Close();
                dataGridView8.DataSource = dt;
            }

            comboBox2.SelectedItem = "All";
        }

        private void dataGridView9_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            string connectionString = @"Server=leia.cs.spu.edu;Database=stevensc3_db;Uid=stevensc3;Pwd=stevensc310$4410X;";
            MySqlConnection myConnection = new MySqlConnection(connectionString);
            myConnection.Open();

            string albumsQuery = @"SELECT Album.albumID, albumTitle, liveRecording
                                    FROM Album
                                    JOIN BandAlbum ON Album.albumID = BandAlbum.albumID
                                    JOIN Band on BandAlbum.bandID = Band.bandID
                                    WHERE Band.bandID = " + dataGridView9.CurrentRow.Cells[0].Value.ToString();
            MySqlCommand albumcmd = new MySqlCommand(albumsQuery, myConnection);
            MySqlDataAdapter albumadp = new MySqlDataAdapter(albumcmd);
            DataTable albumdt = new DataTable();
            albumadp.Fill(albumdt);
            dataGridView10.DataSource = albumdt;

            string songsQuery = @"SELECT Song.songID, songTitle, duration, lyrics
                                    FROM Song
                                    JOIN BandSong ON Song.songID = BandSong.songID
                                    JOIN Band on BandSong.bandID = Band.bandID
                                    WHERE Band.bandID = " + dataGridView9.CurrentRow.Cells[0].Value.ToString();
            MySqlCommand songcmd = new MySqlCommand(songsQuery, myConnection);
            MySqlDataAdapter songadp = new MySqlDataAdapter(songcmd);
            DataTable songdt = new DataTable();
            songadp.Fill(songdt);
            dataGridView11.DataSource = songdt;

            myConnection.Close();
        }

        private void dataGridView10_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            string connectionString = @"Server=leia.cs.spu.edu;Database=stevensc3_db;Uid=stevensc3;Pwd=stevensc310$4410X;";
            MySqlConnection myConnection = new MySqlConnection(connectionString);
            myConnection.Open();

            string songsQuery = @"SELECT Song.songID, songTitle, duration, lyrics
                                    FROM Song
                                    JOIN AlbumSong ON Song.songID = AlbumSong.songID
                                    JOIN Album on AlbumSong.albumID = Album.albumID
                                    WHERE Album.albumID = " + dataGridView10.CurrentRow.Cells[0].Value.ToString();
            MySqlCommand songcmd = new MySqlCommand(songsQuery, myConnection);
            MySqlDataAdapter songadp = new MySqlDataAdapter(songcmd);
            DataTable songdt = new DataTable();
            songadp.Fill(songdt);
            dataGridView11.DataSource = songdt;

            myConnection.Close();
        }
    }
}
