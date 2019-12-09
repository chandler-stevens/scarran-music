# Insert data into the tables

# Insert the band and its members into database

INSERT INTO Band
VALUES
(
   NULL,
   'Coldplay' 
);

INSERT INTO Band
VALUES
(
   NULL,
   'Queen' 
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Freddy',
   'Mercury'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Queen'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Freddy'
    AND lName = 'Mercury')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Paul',
   'Rodgers'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Queen'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Pauk'
    AND lName = 'Rodgers')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Adam',
   'Lambert'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Queen'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Adam'
    AND lName = 'Lambert')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Spike',
   'Edney'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Queen'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Spike'
    AND lName = 'Edney')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Neil',
   'Fairclough'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Queen'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Neil'
    AND lName = 'Fairclough')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Tyler',
   'Warren'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Queen'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Tyler'
    AND lName = 'Warren')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Brian',
   'May'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Queen'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Brian'
    AND lName = 'May')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Roger',
   'Taylor'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Queen'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Roger'
    AND lName = 'Taylor')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'John',
   'Deacon'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Queen'),
   (SELECT artistID FROM Artist
    WHERE fName = 'John'
    AND lName = 'Deacon')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Chris',
   'Martin'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Coldplay'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Chris'
    AND lName = 'Martin')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Jonny',
   'Buckland'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Coldplay'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Jonny'
    AND lName = 'Buckland')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Guy',
   'Berryman'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Coldplay'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Guy'
    AND lName = 'Berryman')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Will',
   'Champion'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Coldplay'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Will'
    AND lName = 'Champion')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Phil',
   'Harvey'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Coldplay'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Phil'
    AND lName = 'Harvey')
);

# Insert record labels associated into database

INSERT INTO Label
VALUES 
(
   NULL,
   'Parlophone'
);

INSERT INTO Label
VALUES 
(
   NULL,
   'Capitol'
);

INSERT INTO Label
VALUES 
(
   NULL,
   'Atlantic'
);

INSERT INTO Label
VALUES 
(
   NULL,
   'Third Man'
);

INSERT INTO Label
VALUES 
(
   NULL,
   'EMI'
);

INSERT INTO Label
VALUES 
(
   NULL,
   'Fierce Panda'
);

# Insert albums by “Coldplay” into database

INSERT INTO Album
VALUES
(
   NULL,
   'Viva la Vida or Death and All His Friends',
   FALSE
);

INSERT INTO BandAlbum
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Coldplay'),
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Viva la Vida or Death and All His Friends')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Viva la Vida or Death and All His Friends'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Parlophone')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Viva la Vida or Death and All His Friends'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Capitol')
);

INSERT INTO Album
VALUES
(
   NULL,
   'Ghost Stories Live 2014',
   TRUE
);

INSERT INTO BandAlbum
VALUES
(
   NULL, 
   (SELECT bandID FROM Band
    WHERE bandName = 'Coldplay'),
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Ghost Stories Live 2014')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Ghost Stories Live 2014'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Parlophone')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Ghost Stories Live 2014'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Atlantic')
);

# Insert songs into database

INSERT INTO Song
VALUES
(
   NULL,
   'Viva la Vida',
   '00:04:01',
   'I used to rule the world
    Seas would rise when I gave the word
    Now in the morning, I sleep alone
    Sweep the streets I used to own
    I used to roll the dice
    Feel the fear in my enemy\'s eyes
    Listen as the crowd would sing
    Now the old king is dead! Long live the king!
    One minute I held the key
    Next the walls were closed on me
    And I discovered that my castles stand
    Upon pillars of salt and pillars of sand
    I hear Jerusalem bells are ringing
    Roman Cavalry choirs are singing
    Be my mirror, my sword and shield
    My missionaries in a foreign field
    For some reason I can\'t explain
    Once you go there was never, never a honest word
    And that was when I ruled the world
    It was a wicked and wild wind
    Blew down the doors to let me in
    Shattered windows and the sound of drums
    People couldn\'t believe what I\'d become
    Revolutionaries wait
    For my head on a silver plate
    Just a puppet on a lonely string
    Oh, who would ever want to be king?
    I hear Jerusalem bells are ringing
    Roman Calvary choirs are singing
    Be my mirror, my sword and shield
    My missionaries in a foreign field
    For some reason I can\'t explain
    I know Saint Peter won\'t call my name
    Never an honest word
    But that was when I ruled the world
    Oh, oh, oh, oh, oh
    I hear Jerusalem bells are ringing
    Roman Calvary choirs are singing
    Be my mirror, my sword and shield
    My missionaries in a foreign field
    For some reason I can\'t explain
    I know Saint Peter won\'t call my name
    Never an honest word
    But that was when I ruled the world'
);

INSERT INTO AlbumSong
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Viva la Vida or Death and All His Friends'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Viva la Vida'
    AND lyrics LIKE 'I used to rule the world%')
);

INSERT INTO BandSong
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Coldplay'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Viva la Vida'
    AND lyrics LIKE 'I used to rule the world%')
);

INSERT INTO Song
VALUES
(
   NULL,
   'Always in My Head',
   '00:03:36',
   'I think of you
    I haven\'t slept
    I think I do
    But, I don\'t forget
    My body moves
    Goes where I will
    But though I try my heart stays still
    It never moves
    Just won\'t be led

    And so my mouth waters, to be fed
    And you\'re always in my head

    You\'re always in my head
    You\'re always in my head
    You\'re always in my head

    You\'re always in my head
    Always in my...
    Always in my...

    This, I guess, is to tell you you\'re chosen out from the rest...'
);

INSERT INTO AlbumSong
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Ghost Stories Live 2014'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Always in My Head'
    AND lyrics LIKE 'I think of you%')
);

INSERT INTO BandSong
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Coldplay'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Always in My Head'
    AND lyrics LIKE 'I think of you%')
);

# Insert concert using prescribed playlist into database

INSERT INTO Playlist
VALUES
(
   NULL,
   'Coldplay Live 2014'
);

INSERT INTO PlaylistSong
VALUES
(
   NULL, 
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Coldplay Live 2014'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Viva la Vida'
    AND lyrics LIKE 'I used to rule the world%')
);

INSERT INTO PlaylistSong
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Coldplay Live 2014'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Always in My Head'
    AND lyrics LIKE 'I think of you%')
);

INSERT INTO Concert
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Coldplay Live 2014'),
   'Royal Albert Hall, London, England',
   '2014-07-01'
);

