using System;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using System.Data;

namespace ScarranMusic
{
    public partial class Form1 : Form
    {
        private int PgSize = 25;
        private int CurrentPageIndex = 1;
        private int TotalPage = 0;

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
            this.labelTableAdapter.Fill(this.scarranMusicDataSet.Label);
            this.concertTableAdapter.Fill(this.scarranMusicDataSet.Concert);
            this.playlistTableAdapter.Fill(this.scarranMusicDataSet.Playlist);
            this.artistTableAdapter.Fill(this.scarranMusicDataSet.Artist);
            this.bandTableAdapter.Fill(this.scarranMusicDataSet.Band);
            this.songTableAdapter.Fill(this.scarranMusicDataSet.Song);
            this.albumTableAdapter.Fill(this.scarranMusicDataSet.Album);

            label10.Text = sqlQuery("SELECT  AUTO_INCREMENT FROM information_schema.TABLES WHERE(TABLE_NAME = 'Playlist')").Rows[0][0].ToString();

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

            toolStrip1.Enabled = false;
            toolStrip1.Visible = false;

            CalculateTotalPages();
            GetCurrentRecords(1);

            btnFirstPage.Enabled = false;
            btnPreviousPage.Enabled = false;

            label8.Enabled = false;
            button1.Enabled = false;
            label8.Visible = false;
            button1.Visible = false;

            comboBox3.DropDownStyle = ComboBoxStyle.DropDownList;
            dataGridView12.DataSource = sqlQuery("SELECT 'No matching records found.' AS result");
        }

        private void CalculateTotalPages()
        {
            CurrentPageIndex = 1;
            int rowCount;

            switch (tabBrowse.SelectedIndex)
            {
                case 0:
                    rowCount = songBindingSource.Count;
                    break;
                case 1:
                    rowCount = albumBindingSource.Count;
                    break;
                case 2:
                    rowCount = bandBindingSource.Count;
                    break;
                case 3:
                    rowCount = artistBindingSource.Count;
                    break;
                case 4:
                    rowCount = playlistBindingSource.Count;
                    break;
                case 5:
                    rowCount = concertBindingSource.Count;
                    break;
                case 6:
                    rowCount = labelBindingSource.Count;
                    break;
                default:
                    rowCount = songBindingSource.Count;
                    break;
            }

            TotalPage = rowCount / PgSize;
            // if any row left after calculated pages, add one more page 
            if (rowCount % PgSize > 0)
                TotalPage += 1;
            toolStripProgressBar1.Maximum = TotalPage;
            toolStripProgressBar1.Value = 1;
            toolStripLabel1.Text = "Page 1 of " + TotalPage;

            if (TotalPage == 1)
            {
                toolStripProgressBar1.Maximum = 1;
                toolStripProgressBar1.Value = 1;
                btnNextPage.Enabled = false;
                btnLastPage.Enabled = false;
            }
            else
            {
                btnNextPage.Enabled = true;
                btnLastPage.Enabled = true;
            }
        }

        private void GetCurrentRecords(int page)
        {
            switch (tabBrowse.SelectedIndex)
            {
                case 0:
                    if (page == 1)
                    {
                        dataGridView1.DataSource = sqlQuery("SELECT * FROM Song LIMIT " + PgSize);
                    }
                    else
                    {
                        dataGridView1.DataSource = sqlQuery("SELECT * " +
                                                            "FROM Song " +
                                                            "WHERE songID NOT IN " +
                                                                "(SELECT * FROM " +
                                                                    "(SELECT songID " +
                                                                    "FROM Song LIMIT " + ((page - 1) * PgSize) +
                                                                    ") AS temp) LIMIT " + PgSize);
                    }
                    break;
                case 1:
                    if (page == 1)
                    {
                        dataGridView2.DataSource = sqlQuery("SELECT * FROM Album LIMIT " + PgSize);
                    }
                    else
                    {
                        dataGridView2.DataSource = sqlQuery("SELECT * " +
                                                            "FROM Album " +
                                                            "WHERE albumID NOT IN " +
                                                                "(SELECT * FROM " +
                                                                    "(SELECT albumID " +
                                                                    "FROM Album LIMIT " + ((page - 1) * PgSize) +
                                                                    ") AS temp) LIMIT " + PgSize);
                    }
                    break;
                case 2:
                    if (page == 1)
                    {
                        dataGridView3.DataSource = sqlQuery("SELECT * FROM Band LIMIT " + PgSize);
                    }
                    else
                    {
                        dataGridView3.DataSource = sqlQuery("SELECT * " +
                                                            "FROM Band " +
                                                            "WHERE bandID NOT IN " +
                                                                "(SELECT * FROM " +
                                                                    "(SELECT bandID " +
                                                                    "FROM Band LIMIT " + ((page - 1) * PgSize) +
                                                                    ") AS temp) LIMIT " + PgSize);
                    }
                    break;
                case 3:
                    if (page == 1)
                    {
                        dataGridView4.DataSource = sqlQuery("SELECT * FROM Artist LIMIT " + PgSize);
                    }
                    else
                    {
                        dataGridView4.DataSource = sqlQuery("SELECT * " +
                                                            "FROM Artist " +
                                                            "WHERE artistID NOT IN " +
                                                                "(SELECT * FROM " +
                                                                    "(SELECT artistID " +
                                                                    "FROM Artist LIMIT " + ((page - 1) * PgSize) +
                                                                    ") AS temp) LIMIT " + PgSize);
                    }
                    break;
                case 4:
                    dataGridView5.AutoGenerateColumns = true;
                    if (page == 1)
                    {
                        dataGridView5.DataSource = sqlQuery(
                                @"SELECT Playlist.playlistID, playlistTitle, SEC_TO_TIME(SUM(TIME_TO_SEC(duration))) AS totalDuration
                                    FROM Song
                                    JOIN PlaylistSong ON PlaylistSong.songID = Song.songID
                                    JOIN Playlist ON Playlist.playlistID = PlaylistSong.playlistID
                                    GROUP BY Playlist.playlistID LIMIT " + PgSize);
                    }
                    else
                    {
                        dataGridView5.DataSource = sqlQuery(
                                @"SELECT Playlist.playlistID, playlistTitle, SEC_TO_TIME(SUM(TIME_TO_SEC(duration))) AS totalDuration
                                    FROM Song
                                    JOIN PlaylistSong ON PlaylistSong.songID = Song.songID
                                    JOIN Playlist ON Playlist.playlistID = PlaylistSong.playlistID
                                    WHERE Playlist.playlistID NOT IN
                                    (SELECT * FROM
                                        (SELECT playlistID
                                            FROM Playlist LIMIT " + ((page - 1) * PgSize) + ") AS temp)" +
                                    "GROUP BY Playlist.playlistID LIMIT " + PgSize);
                    }
                    break;
                case 5:
                    if (page == 1)
                    {
                        dataGridView6.DataSource = sqlQuery("SELECT * FROM Concert LIMIT " + PgSize);
                    }
                    else
                    {
                        dataGridView6.DataSource = sqlQuery("SELECT * " +
                                                            "FROM Concert " +
                                                            "WHERE concertID NOT IN " +
                                                                "(SELECT * FROM " +
                                                                    "(SELECT concertID " +
                                                                    "FROM Concert LIMIT " + ((page - 1) * PgSize) +
                                                                    ") AS temp) LIMIT " + PgSize);
                    }
                    break;
                case 6:
                    if (page == 1)
                    {
                        dataGridView7.DataSource = sqlQuery("SELECT * FROM Label LIMIT " + PgSize);
                    }
                    else
                    {
                        dataGridView7.DataSource = sqlQuery("SELECT * " +
                                                            "FROM Label " +
                                                            "WHERE labelID NOT IN " +
                                                                "(SELECT * FROM " +
                                                                    "(SELECT labelID " +
                                                                    "FROM Label LIMIT " + ((page - 1) * PgSize) +
                                                                    ") AS temp) LIMIT " + PgSize);
                    }
                    break;
                default:
                    break;
            }
        }

        private void btnFirstPage_Click(object sender, EventArgs e)
        {
            CurrentPageIndex = 1;
            toolStripProgressBar1.Value = 1;
            GetCurrentRecords(CurrentPageIndex);
            toolStripLabel1.Text = "Page 1 of " + TotalPage;

            btnFirstPage.Enabled = false;
            btnPreviousPage.Enabled = false;

            if (btnLastPage.Enabled == false)
            {
                btnNextPage.Enabled = true;
                btnLastPage.Enabled = true;
            }
        }

        private void btnPreviousPage_Click(object sender, EventArgs e)
        {
            if (CurrentPageIndex > 1)
            {
                CurrentPageIndex--;
                toolStripProgressBar1.Value--;
                GetCurrentRecords(CurrentPageIndex);
                toolStripLabel1.Text = "Page " + CurrentPageIndex + " of " + TotalPage;

                if (CurrentPageIndex == 1)
                {
                    btnFirstPage.Enabled = false;
                    btnPreviousPage.Enabled = false;
                    btnNextPage.Enabled = true;
                    btnLastPage.Enabled = true;
                }
                else if (CurrentPageIndex == (TotalPage - 1))
                {
                    btnNextPage.Enabled = true;
                    btnLastPage.Enabled = true;
                }
            }
        }

        private void btnNextPage_Click(object sender, EventArgs e)
        {
            if (CurrentPageIndex < TotalPage)
            {
                CurrentPageIndex++;
                toolStripProgressBar1.Value++;
                GetCurrentRecords(CurrentPageIndex);
                toolStripLabel1.Text = "Page " + CurrentPageIndex + " of " + TotalPage;

                if (CurrentPageIndex == TotalPage)
                {
                    btnFirstPage.Enabled = true;
                    btnPreviousPage.Enabled = true;
                    btnNextPage.Enabled = false;
                    btnLastPage.Enabled = false;
                }
                else if (CurrentPageIndex == 2)
                {
                    btnFirstPage.Enabled = true;
                    btnPreviousPage.Enabled = true;
                }
            }
        }

        private void btnLastPage_Click(object sender, EventArgs e)
        {
            CurrentPageIndex = TotalPage;
            toolStripProgressBar1.Value = TotalPage;
            GetCurrentRecords(CurrentPageIndex);
            toolStripLabel1.Text = "Page " + TotalPage + " of " + TotalPage;

            btnNextPage.Enabled = false;
            btnLastPage.Enabled = false;

            if (btnFirstPage.Enabled == false)
            {
                btnFirstPage.Enabled = true;
                btnPreviousPage.Enabled = true;
            }
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
            updateSelection();
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

            if (dataGridView10.CurrentRow != null)
            {
                dataGridView11.DataSource = sqlQuery(
                    @"SELECT Song.songID, songTitle, duration, lyrics
                    FROM Song
                    JOIN BandSong ON Song.songID = BandSong.songID
                    JOIN Band on BandSong.bandID = Band.bandID
                    JOIN AlbumSong on AlbumSong.songID = Song.songID
                    WHERE Band.bandID = " + dataGridView9.CurrentRow.Cells[0].Value.ToString() +
                        " AND AlbumSong.albumID = " + dataGridView10.CurrentRow.Cells[0].Value.ToString());
            }
            else
            {
                dataGridView11.DataSource = null;
            }
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
            filterDrillDown(dataGridView9, textBox2);

            if (dataGridView9.RowCount != 0)
            {
                dataGridView9_CellClick(dataGridView9,
                    new DataGridViewCellEventArgs(
                        dataGridView9.CurrentCell.ColumnIndex,
                        dataGridView9.CurrentRow.Index));
            }
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {
            filterDrillDown(dataGridView10, textBox3);

            if (dataGridView10.RowCount != 0)
            {
                dataGridView10_CellClick(dataGridView10,
                new DataGridViewCellEventArgs(
                    dataGridView10.CurrentCell.ColumnIndex,
                    dataGridView10.CurrentRow.Index));
            }
        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {
            filterDrillDown(dataGridView11, textBox4);
        }

        private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
        {
            textBox5.Text = "";
            dataGridView12.DataSource = sqlQuery("SELECT 'No matching records found.' AS result");
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

            if (textBox5.Text == "" || dataGridView12.RowCount == 0)
            {
                dataGridView12.DataSource = sqlQuery("SELECT 'No matching records found.' AS result");
            }
        }

        private void tabBrowse_SelectedIndexChanged(object sender, EventArgs e)
        {
            toolStripProgressBar1.Value = 1;
            CalculateTotalPages();
            GetCurrentRecords(1);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string connectionString = @"Server=leia.cs.spu.edu;Database=stevensc3_db;Uid=stevensc3;Pwd=stevensc310$4410X;";
            MySqlConnection myConnection = new MySqlConnection(connectionString);
            myConnection.Open();

            MySqlCommand comm = myConnection.CreateCommand();
            comm.CommandText = "INSERT INTO Playlist VALUES (NULL, @title)";
            comm.Parameters.AddWithValue("@title", textBox6.Text);
            comm.ExecuteNonQuery();

            foreach (DataGridViewRow song in dataGridView13.SelectedRows)
            {
                MySqlCommand cmd = myConnection.CreateCommand();
                cmd.CommandText = "INSERT INTO PlaylistSong VALUES (NULL, @playlist, @song)";
                cmd.Parameters.AddWithValue("@playlist", label10.Text);
                cmd.Parameters.AddWithValue("@song", song.Cells[0].Value.ToString());
                cmd.ExecuteNonQuery();
            }
            
            myConnection.Close();

            textBox6.Text = "";
            label10.Text = sqlQuery("SELECT  AUTO_INCREMENT FROM information_schema.TABLES WHERE(TABLE_NAME = 'Playlist')").Rows[0][0].ToString();
            label8.Enabled = false;
            button1.Enabled = false;
            dataGridView13.ClearSelection();
        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {
            if (textBox6.Text != "" && dataGridView13.SelectedRows != null && dataGridView13.SelectedRows.Count > 0)
            {
                label8.Enabled = true;
                button1.Enabled = true;
                label8.Visible = true;
                button1.Visible = true;
            }
            else
            {
                label8.Enabled = false;
                button1.Enabled = false;
                label8.Visible = false;
                button1.Visible = false;
            }
        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (tabControl1.SelectedIndex == 3)
            {
                toolStrip1.Enabled = true;
                toolStrip1.Visible = true;
            }
            else
            {
                toolStrip1.Enabled = false;
                toolStrip1.Visible = false;

                if (tabControl1.SelectedIndex == 4)
                {
                    textBox6.Focus();
                    dataGridView13.ClearSelection();
                }
            }
        }

        private void dataGridView13_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (textBox6.Text != "" && dataGridView13.SelectedRows != null && dataGridView13.SelectedRows.Count > 0)
            {
                label8.Enabled = true;
                button1.Enabled = true;
                label8.Visible = true;
                button1.Visible = true;
            }
            else
            {
                label8.Enabled = false;
                button1.Enabled = false;
                label8.Visible = false;
                button1.Visible = false;
            }
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            System.Diagnostics.Process.Start("https://github.com/chandler-stevens/scarran-music");
        }
    }
}