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
   'Celtic Woman' 
);

INSERT INTO Band
VALUES
(
   NULL,
   'Disturbed' 
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
   'Mairead',
   'Carlin'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Celtic Woman'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Mairead'
    AND lName = 'Carlin')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Eabha',
   'McMahon'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Celtic Woman'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Eabha'
    AND lName = 'McMahon')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Tara',
   'McNeil'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Celtic Woman'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Tara'
    AND lName = 'McNeil')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Megan',
   'Walsh'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Celtic Woman'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Megan'
    AND lName = 'Walsh')
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
   'Dan',
   'Donegan'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Disturbed'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Dan'
    AND lName = 'Donegan')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Mike',
   'Wengren'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Disturbed'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Mike'
    AND lName = 'Wengren')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'David',
   'Draiman'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Disturbed'),
   (SELECT artistID FROM Artist
    WHERE fName = 'David'
    AND lName = 'Draiman')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'John',
   'Moyer'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Disturbed'),
   (SELECT artistID FROM Artist
    WHERE fName = 'John'
    AND lName = 'Moyer')
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
   'Warner Bros'
);

INSERT INTO Label
VALUES 
(
   NULL,
   'Reprise'
);

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

# Insert albums into database

INSERT INTO Album
VALUES
(
   NULL,
   'Immortalized',
   FALSE
);

INSERT INTO BandAlbum
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Disturbed'),
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Immortalized')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Immortalized'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Reprise')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Immortalized'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Warner Bros')
);

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

INSERT INTO Album
VALUES
(
   NULL,
   'A Kind of Magic',
   FALSE
);

INSERT INTO BandAlbum
VALUES
(
   NULL, 
   (SELECT bandID FROM Band
    WHERE bandName = 'Queen'),
   (SELECT albumID FROM Album
    WHERE albumTitle = 'A Kind of Magic')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'A Kind of Magic'),
   (SELECT labelID FROM Label
    WHERE labelName = 'EMI')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'A Kind of Magic'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Capitol')
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
   'The Sound Of Silence',
   '00:03:07',
   'Hello darkness, my old friend
   I\'ve come to talk with you again
   Because a vision softly creeping
   Left its seeds while I was sleeping
   And the vision that was planted in my brain
   Still remains
   Within the sound of silence
   In restless dreams I walked alone
   Narrow streets of cobblestone
   \'Neath the halo of a street lamp
   I turned my collar to the cold and damp
   When my eyes were stabbed by the flash of a neon light
   That split the night
   And touched the sound of silence
   And in the naked light I saw
   Ten thousand people, maybe more
   People talking without speaking
   People hearing without listening
   People writing songs that voices never share
   And no one dared
   Disturb the sound of silence
   \"Fools, \" said I, \"You do not know
   Silence, like a cancer, grows
   Hear my words that I might teach you
   Take my arms that I might reach you\"
   But my words, like silent raindrops fell
   And echoed in the wells, of silence
   And the people bowed and prayed
   To the neon god they made
   And the sign flashed out its warning
   In the words that it was forming
   And the sign said, \"The words of the prophets are written on the subway walls
   And tenement halls\"
   And whispered in the sounds of silence'
);

INSERT INTO AlbumSong
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Immortalized'),
   (SELECT songID FROM Song
    WHERE songTitle = 'The Sound Of Silence'
    AND lyrics LIKE 'Hello darkness, my old friend%')
);

INSERT INTO BandSong
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Disturbed'),
   (SELECT songID FROM Song
    WHERE songTitle = 'The Sound Of Silence'
    AND lyrics LIKE 'Hello darkness, my old friend%')
);

INSERT INTO Song
VALUES
(
   NULL,
   'Who Wants to Live Forever',
   '00:04:12',
   'There\'s no time for us
   There\'s no place for us
   What is this thing that builds our dreams
   Yet slips away from us?
   Who wants to live forever?
   Who wants to live forever?
   There\'s no chance for us
   It\'s all decided for us
   This world has only one
   Sweet moment set aside for us
   Who wants to live forever?
   Who wants to live forever?
   Who?
   Who dares to love forever
   Oh, when love must die?
   But touch my tears with your lips
   Touch my world with your fingertips
   And we can have forever
   And we can love forever
   Forever is our today
   Who wants to live forever?
   Who wants to live forever?
   Forever is our today
   Who waits forever anyway?'
);

INSERT INTO AlbumSong
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'A Kind of Magic'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Who Wants to Live Forever'
    AND lyrics LIKE 'There\'s no time for us%')
);

INSERT INTO BandSong
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Queen'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Who Wants to Live Forever'
    AND lyrics LIKE 'There\'s no time for us%')
);

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

