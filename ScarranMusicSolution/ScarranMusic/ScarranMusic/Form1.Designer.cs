namespace ScarranMusic
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.scarranMusicDataSet = new ScarranMusic.ScarranMusicDataSet();
            this.albumBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.albumTableAdapter = new ScarranMusic.ScarranMusicDataSetTableAdapters.AlbumTableAdapter();
            this.albumIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.albumTitleDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.liveRecordingDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.scarranMusicDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.albumBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.albumIDDataGridViewTextBoxColumn,
            this.albumTitleDataGridViewTextBoxColumn,
            this.liveRecordingDataGridViewCheckBoxColumn});
            this.dataGridView1.DataSource = this.albumBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(41, 55);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(737, 363);
            this.dataGridView1.TabIndex = 0;
            // 
            // scarranMusicDataSet
            // 
            this.scarranMusicDataSet.DataSetName = "ScarranMusicDataSet";
            this.scarranMusicDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // albumBindingSource
            // 
            this.albumBindingSource.DataMember = "Album";
            this.albumBindingSource.DataSource = this.scarranMusicDataSet;
            // 
            // albumTableAdapter
            // 
            this.albumTableAdapter.ClearBeforeFill = true;
            // 
            // albumIDDataGridViewTextBoxColumn
            // 
            this.albumIDDataGridViewTextBoxColumn.DataPropertyName = "albumID";
            this.albumIDDataGridViewTextBoxColumn.HeaderText = "albumID";
            this.albumIDDataGridViewTextBoxColumn.Name = "albumIDDataGridViewTextBoxColumn";
            this.albumIDDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // albumTitleDataGridViewTextBoxColumn
            // 
            this.albumTitleDataGridViewTextBoxColumn.DataPropertyName = "albumTitle";
            this.albumTitleDataGridViewTextBoxColumn.HeaderText = "albumTitle";
            this.albumTitleDataGridViewTextBoxColumn.Name = "albumTitleDataGridViewTextBoxColumn";
            this.albumTitleDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // liveRecordingDataGridViewCheckBoxColumn
            // 
            this.liveRecordingDataGridViewCheckBoxColumn.DataPropertyName = "liveRecording";
            this.liveRecordingDataGridViewCheckBoxColumn.HeaderText = "liveRecording";
            this.liveRecordingDataGridViewCheckBoxColumn.Name = "liveRecordingDataGridViewCheckBoxColumn";
            this.liveRecordingDataGridViewCheckBoxColumn.ReadOnly = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.dataGridView1);
            this.Name = "Form1";
            this.Text = "Scarran Music Database";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.scarranMusicDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.albumBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private ScarranMusicDataSet scarranMusicDataSet;
        private System.Windows.Forms.BindingSource albumBindingSource;
        private ScarranMusicDataSetTableAdapters.AlbumTableAdapter albumTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn albumIDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn albumTitleDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn liveRecordingDataGridViewCheckBoxColumn;
    }
}

