# Create the primary entities

CREATE TABLE IF NOT EXISTS Band
(
   bandID INT AUTO_INCREMENT,
   bandName VARCHAR(100) NOT NULL,
   CONSTRAINT Band_pk
      PRIMARY KEY (bandID)
);

CREATE TABLE IF NOT EXISTS Artist
(
   artistID INT AUTO_INCREMENT,
   fName VARCHAR(100) NOT NULL,
   lName VARCHAR(100) NULL,
   CONSTRAINT Artist_pk
      PRIMARY KEY (artistID)
);

CREATE TABLE IF NOT EXISTS Album
(
   albumID INT AUTO_INCREMENT,
   albumTitle VARCHAR(100) NOT NULL,
   liveRecording BOOL DEFAULT FALSE NULL,
   CONSTRAINT Album_pk
      PRIMARY KEY (albumID)
);

CREATE TABLE IF NOT EXISTS Label
(
   labelID INT AUTO_INCREMENT,
   labelName VARCHAR(100) NOT NULL,
   CONSTRAINT Label_pk
      PRIMARY KEY (labelID)
);

CREATE TABLE IF NOT EXISTS Song
(
   songID INT AUTO_INCREMENT,
   songTitle VARCHAR(100) NOT NULL,
   duration TIME NULL,
   lyrics VARCHAR(5000) NULL,
   CONSTRAINT Song_pk
      PRIMARY KEY (songID)
);

# Create “Playlist” before “Concert” due to One-to-Many relationship

CREATE TABLE IF NOT EXISTS Playlist
(
   playlistID INT AUTO_INCREMENT,
   playlistTitle VARCHAR(100) NOT NULL,
   CONSTRAINT Playlist_pk
      PRIMARY KEY (playlistID)
);

CREATE TABLE IF NOT EXISTS Concert
(
   concertID INT AUTO_INCREMENT,
   playlistID INT NULL,
   location VARCHAR(100) NULL,
   date DATE NULL,
   CONSTRAINT Concert_pk
      PRIMARY KEY (concertID),
   CONSTRAINT Concert_Playlist_playlistID_fk
      FOREIGN KEY (playlistID) REFERENCES Playlist (playlistID)
         ON UPDATE CASCADE ON DELETE SET NULL
);

# Create the relational tables

CREATE TABLE IF NOT EXISTS BandArtist
(
   bandArtistID INT AUTO_INCREMENT,
   bandID INT NOT NULL,
   artistID INT NOT NULL,
   CONSTRAINT BandArtist_pk
      PRIMARY KEY (bandArtistID),
   CONSTRAINT BandArtist_Artist_artistID_fk
      FOREIGN KEY (artistID) REFERENCES Artist (artistID)
         ON UPDATE CASCADE ON DELETE CASCADE,
   CONSTRAINT BandArtist_Band_bandID_fk
      FOREIGN KEY (bandID) REFERENCES Band (bandID)
         ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS AlbumSong
(
   albumSongID INT AUTO_INCREMENT,
   albumID INT NOT NULL,
   songID INT NOT NULL,
   CONSTRAINT AlbumSong_pk
      PRIMARY KEY (albumSongID),
   CONSTRAINT AlbumSong_Album_albumID_fk
      FOREIGN KEY (albumID) REFERENCES Album (albumID)
         ON UPDATE CASCADE ON DELETE CASCADE,
   CONSTRAINT AlbumSong_Song_songID_fk
      FOREIGN KEY (songID) REFERENCES Song (songID)
         ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS PlaylistSong
(
   playlistSongID INT AUTO_INCREMENT,
   playlistID INT NOT NULL,
   songID INT NOT NULL,
   CONSTRAINT PlaylistSong_pk
      PRIMARY KEY (playlistSongID),
   CONSTRAINT PlaylistSong_Playlist_playlistID_fk
      FOREIGN KEY (playlistID) REFERENCES Playlist (playlistID)
         ON UPDATE CASCADE ON DELETE CASCADE,
   CONSTRAINT PlaylistSong_Song_songID_fk
      FOREIGN KEY (songID) REFERENCES Song (songID)
         ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS BandAlbum
(
   bandAlbumID INT AUTO_INCREMENT,
   bandID INT NOT NULL,
   albumID INT NOT NULL,
   CONSTRAINT BandAlbum_pk
      PRIMARY KEY (bandAlbumID),
   CONSTRAINT BandAlbum_Album_albumID_fk
      FOREIGN KEY (albumID) REFERENCES Album (albumID)
         ON UPDATE CASCADE ON DELETE CASCADE,
   CONSTRAINT BandAlbum_Band_bandID_fk
      FOREIGN KEY (bandID) REFERENCES Band (bandID)
         ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS BandSong
(
   bandSongID INT AUTO_INCREMENT,
   bandID INT NOT NULL,
   songID INT NOT NULL,
   CONSTRAINT BandSong_pk
      PRIMARY KEY (bandSongID),
   CONSTRAINT BandSong_Band_bandID_fk
      FOREIGN KEY (bandID) REFERENCES Band (bandID)
         ON UPDATE CASCADE ON DELETE CASCADE,
   CONSTRAINT BandSong_Song_songID_fk
      FOREIGN KEY (songID) REFERENCES Song (songID)
         ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS AlbumLabel
(
   albumLabelID INT AUTO_INCREMENT,
   albumID INT NOT NULL,
   labelID INT NOT NULL,
   CONSTRAINT AlbumLabel_pk
      PRIMARY KEY (albumLabelID),
   CONSTRAINT AlbumLabel_Album_albumID_fk
      FOREIGN KEY (albumID) REFERENCES Album (albumID)
         ON UPDATE CASCADE ON DELETE CASCADE,
   CONSTRAINT AlbumLabel_Label_labelID_fk
      FOREIGN KEY (labelID) REFERENCES Label (labelID)
         ON UPDATE CASCADE ON DELETE CASCADE
);
