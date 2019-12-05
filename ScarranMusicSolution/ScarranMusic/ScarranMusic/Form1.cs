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


        private void dataGridView8_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

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

        private void getItems()
        {
            comboBox2.Items.Clear();
            System.Object[] ItemObject = new System.Object[dataGridView8.ColumnCount + 1];
            ItemObject[0] = "All";
            for (int i = 0; i < dataGridView8.ColumnCount; i++)
            {
                ItemObject[i + 1] = dataGridView8.Columns[i].HeaderText;
            }
            comboBox2.Items.AddRange(ItemObject);
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

            getItems();
            dataGridView8.Refresh();
        }        
    }
}
