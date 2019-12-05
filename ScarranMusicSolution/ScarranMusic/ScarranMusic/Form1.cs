using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

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

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
