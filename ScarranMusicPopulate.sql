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

INSERT INTO Band
VALUES
(
   NULL,
   'Metallica'
);

INSERT INTO Band
VALUES
(
   NULL,
   'Christina Aguilera'
);

INSERT INTO Band
VALUES
(
   NULL,
   'Eric Clapton'
);

INSERT INTO Band
VALUES
(
   NULL,
   'Yardbirds'
);

INSERT INTO Band
VALUES
(
   NULL,
   'Cream'
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Jeff',
   'Beck'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Cream'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Jeff'
    AND lName = 'Beck')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Jimmy',
   'Page'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Yardbirds'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Jimmy'
    AND lName = 'Page')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Jack',
   'Bruce'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Cream'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Jack'
    AND lName = 'Bruce')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Ginger',
   'Baker'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Cream'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Ginger'
    AND lName = 'Baker')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Eric',
   'Clapton'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Eric Clapton'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Eric'
    AND lName = 'Clapton')
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Cream'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Eric'
    AND lName = 'Clapton')
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Yardbirds'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Eric'
    AND lName = 'Clapton')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Christina',
   'Aguilera'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Christina Aguilera'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Christina'
    AND lName = 'Aguilera')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'James',
   'Hetfield'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Metallica'),
   (SELECT artistID FROM Artist
    WHERE fName = 'James'
    AND lName = 'Hetfield')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Lars',
   'Ulrich'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Metallica'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Lars'
    AND lName = 'Ulrich')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Kirk',
   'Hammett'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Metallica'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Kirk'
    AND lName = 'Hammett')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Robert',
   'Trujillo'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Metallica'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Robert'
    AND lName = 'Trujillo')
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
    WHERE fName = 'Paul'
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

INSERT INTO Band
VALUES
(
   NULL,
   'Simon & Garfunkel'
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Paul',
   'Simon'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Simon & Garfunkel'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Paul'
    AND lName = 'Simon')
);

INSERT INTO Artist
VALUES
(
   NULL,
   'Art',
   'Garfunkel'
);

INSERT INTO BandArtist
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Simon & Garfunkel'),
   (SELECT artistID FROM Artist
    WHERE fName = 'Art'
    AND lName = 'Garfunkel')
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

INSERT INTO Label
VALUES
(
   NULL,
   'Manhattan Records'
);

INSERT INTO Label
VALUES
(
   NULL,
   'Megaforce'
);

INSERT INTO Label
VALUES
(
   NULL,
   'RCA'
);

INSERT INTO Label
VALUES
(
   NULL,
   'Elektra'
);

INSERT INTO Label
VALUES
(
   NULL,
   'Vertigo'
);

INSERT INTO Label
VALUES
(
   NULL,
   'Blackend'
);

INSERT INTO Label
VALUES
(
   NULL,
   'Reaction'
);

INSERT INTO Label
VALUES
(
   NULL,
   'Polydor'
);

INSERT INTO Label
VALUES
(
   NULL,
   'Atco'
);

INSERT INTO Label
VALUES
(
   NULL,
   'RSO'
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
   'Epic'
);

INSERT INTO Label
VALUES
(
   NULL,
   'Columbia'
);










# Insert albums into database

INSERT INTO Album
VALUES
(
   NULL,
   'Eric Clapton',
   True
);

INSERT INTO BandAlbum
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Eric Clapton'),
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Eric Clapton')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Eric Clapton'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Atco')
);

INSERT INTO Album
VALUES
(
   NULL,
   'Little Games',
   True
);

INSERT INTO BandAlbum
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Yardbirds'),
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Little Games')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Little Games'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Capitol')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Little Games'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Epic')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Little Games'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Columbia')
);

INSERT INTO Album
VALUES
(
   NULL,
   'Roger the Engineer',
   True
);

INSERT INTO BandAlbum
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Yardbirds'),
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Roger the Engineer')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Roger the Engineer'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Capitol')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Roger the Engineer'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Epic')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Roger the Engineer'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Columbia')
);

INSERT INTO Album
VALUES
(
   NULL,
   'Goodbye',
   True
);

INSERT INTO BandAlbum
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Cream'),
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Goodbye')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Goodbye'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Reaction')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Goodbye'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Polydor')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Goodbye'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Atco')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Goodbye'),
   (SELECT labelID FROM Label
    WHERE labelName = 'RSO')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Goodbye'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Reprise')
);

INSERT INTO Album
VALUES
(
   NULL,
   'Fresh Cream',
   True
);

INSERT INTO BandAlbum
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Cream'),
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Fresh Cream')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Fresh Cream'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Reaction')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Fresh Cream'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Polydor')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Fresh Cream'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Atco')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Fresh Cream'),
   (SELECT labelID FROM Label
    WHERE labelName = 'RSO')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Fresh Cream'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Reprise')
);

INSERT INTO Album
VALUES
(
   NULL,
   'Christina Aguilera',
   True
);

INSERT INTO BandAlbum
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Christina Aguilera'),
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Christina Aguilera')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Christina Aguilera'),
   (SELECT labelID FROM Label
    WHERE labelName = 'RCA')
);

INSERT INTO Album
VALUES
(
   NULL,
   'Metallica Nassau Coliseum 1991',
   True
);

INSERT INTO BandAlbum
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Metallica'),
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Metallica Nassau Coliseum 1991')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Metallica Nassau Coliseum 1991'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Megaforce')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Metallica Nassau Coliseum 1991'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Elektra')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Metallica Nassau Coliseum 1991'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Vertigo')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Metallica Nassau Coliseum 1991'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Blackend')
);

INSERT INTO Album
VALUES
(
   NULL,
   'Believe',
   True
);

INSERT INTO BandAlbum
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Celtic Woman'),
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Believe')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Believe'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Manhattan Records')
);

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

INSERT INTO Album
VALUES
(
   NULL,
   'Sounds of Silence',
   FALSE
);

INSERT INTO BandAlbum
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Simon & Garfunkel'),
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Sounds of Silence')
);

INSERT INTO AlbumLabel
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Sounds of Silence'),
   (SELECT labelID FROM Label
    WHERE labelName = 'Columbia')
);








# Insert songs into database

INSERT INTO Song
VALUES
(
   NULL,
   'Beautiful',
   NULL,
   NULL
);

INSERT INTO AlbumSong
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Christina Aguilera'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Beautiful')
);

INSERT INTO BandSong
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Christina Aguilera'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Beautiful')
);

INSERT INTO Song
VALUES
(
   NULL,
   'Candyman',
   NULL,
   NULL
);

INSERT INTO AlbumSong
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Christina Aguilera'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Candyman')
);

INSERT INTO BandSong
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Christina Aguilera'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Candyman')
);

INSERT INTO Song
VALUES
(
   NULL,
   'Genie In a Bottle',
   NULL,
   NULL
);

INSERT INTO AlbumSong
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Christina Aguilera'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Genie In a Bottle')
);

INSERT INTO BandSong
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Christina Aguilera'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Genie In a Bottle')
);

INSERT INTO Song
VALUES
(
   NULL,
   'Creeping Death',
   '00:06:36',
   NULL
);

INSERT INTO AlbumSong
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Metallica Nassau Coliseum 1991'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Creeping Death')
);

INSERT INTO BandSong
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Metallica'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Creeping Death')
);

INSERT INTO Song
VALUES
(
   NULL,
   'Enter Sandman',
   '00:05:30',
   NULL
);

INSERT INTO AlbumSong
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Metallica Nassau Coliseum 1991'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Enter Sandman')
);

INSERT INTO BandSong
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Metallica'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Enter Sandman')
);

INSERT INTO Song
VALUES
(
   NULL,
   'Teir Abhaile Riu',
   '00:04:05',
   NULL
);

INSERT INTO AlbumSong
VALUES
(
   NULL,
   (SELECT albumID FROM Album
    WHERE albumTitle = 'Believe'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Teir Abhaile Riu')
);

INSERT INTO BandSong
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Celtic Woman'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Teir Abhaile Riu')
);

INSERT INTO Song
VALUES
(
   NULL,
   'The Sound of Silence',
   '00:04:08',
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
    WHERE songTitle = 'The Sound of Silence'
    AND lyrics LIKE 'Hello darkness, my old friend%')
);

INSERT INTO BandSong
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Disturbed'),
   (SELECT songID FROM Song
    WHERE songTitle = 'The Sound of Silence'
    AND lyrics LIKE 'Hello darkness, my old friend%')
);

INSERT INTO Song
VALUES
(
   NULL,
   'The Sounds of Silence',
   '00:03:05',
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
    WHERE albumTitle = 'Sounds of Silence'),
   (SELECT songID FROM Song
    WHERE songTitle = 'The Sounds of Silence'
    AND lyrics LIKE 'Hello darkness, my old friend%')
);

INSERT INTO BandSong
VALUES
(
   NULL,
   (SELECT bandID FROM Band
    WHERE bandName = 'Simon & Garfunkel'),
   (SELECT songID FROM Song
    WHERE songTitle = 'The Sounds of Silence'
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
   'Rock'
);


INSERT INTO Playlist
VALUES
(
   NULL,
   'Metal'
);


INSERT INTO Playlist
VALUES
(
   NULL,
   'Classical'
);

INSERT INTO Playlist
VALUES
(
   NULL,
   'Pop'
);

INSERT INTO Playlist
VALUES
(
   NULL,
   'Classic Violin Hits'
);

INSERT INTO Playlist
VALUES
(
   NULL,
   'Metallica Nassau Coliseum 1991'
);

INSERT INTO Playlist
VALUES
(
   NULL,
   'Christina Aguilera'
);

INSERT INTO PlaylistSong
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Christina Aguilera'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Beautiful')
);

INSERT INTO PlaylistSong
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Pop'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Beautiful')
);

INSERT INTO PlaylistSong
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Christina Aguilera'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Candyman')
);

INSERT INTO PlaylistSong
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Pop'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Candyman')
);

INSERT INTO PlaylistSong
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Christina Aguilera'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Genie In a Bottle')
);

INSERT INTO PlaylistSong
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Pop'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Genie In a Bottle')
);

INSERT INTO PlaylistSong
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Metallica Nassau Coliseum 1991'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Enter Sandman')
);

INSERT INTO PlaylistSong
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Metal'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Enter Sandman')
);

INSERT INTO PlaylistSong
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Metallica Nassau Coliseum 1991'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Creeping Death')
);

INSERT INTO PlaylistSong
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Metal'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Creeping Death')
);

INSERT INTO PlaylistSong
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Classic Violin Hits'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Teir Abhaile Riu')
);

INSERT INTO PlaylistSong
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Classical'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Teir Abhaile Riu')
);

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
    WHERE playlistTitle = 'Rock'),
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

INSERT INTO PlaylistSong
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Rock'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Always in My Head'
    AND lyrics LIKE 'I think of you%')
);

INSERT INTO PlaylistSong
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Rock'),
   (SELECT songID FROM Song
    WHERE songTitle = 'Who Wants to Live Forever')
);

INSERT INTO PlaylistSong
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Rock'),
   (SELECT songID FROM Song
    WHERE songTitle = 'The Sound Of Silence')
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

INSERT INTO Concert
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Christina Aguilera'),
   'Zappo\'s Theater at Planet Hollywood, Nevada, US',
   '2019-12-27'
);

INSERT INTO Concert
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Christina Aguilera'),
   'Zappo\'s Theater at Planet Hollywood, Nevada, US',
   '2019-12-28'
);

INSERT INTO Concert
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Christina Aguilera'),
   'Zappo\'s Theater at Planet Hollywood, Nevada, US',
   '2019-12-30'
);

INSERT INTO Concert
VALUES
(
   NULL,
   (SELECT playlistID FROM Playlist
    WHERE playlistTitle = 'Metallica Nassau Coliseum 1991'),
   'Nassau Veterans Memorial Coliseum, New York, US',
   '1991-12-19'
);

# Luis Miguel

INSERT INTO Label
VALUES(NULL, 'WEA Latina');

INSERT INTO Album
VALUES(NULL, 'Romance', FALSE);

INSERT INTO AlbumLabel
VALUES(NULL,
	(SELECT albumID FROM Album WHERE albumTitle = 'Romance'),
	(SELECT labelID FROM Label WHERE labelName = 'WEA Latina'));

INSERT INTO Band
VALUES(NULL, 'Luis Miguel');

INSERT INTO Artist
VALUES(NULL, 'Luis', 'Miguel');

INSERT INTO BandArtist
VALUES (NULL,
	(SELECT bandID FROM Band WHERE bandName = 'Luis Miguel'),
	(SELECT artistID FROM Artist WHERE fName = 'Luis' AND lName = 'Miguel'));

INSERT INTO BandAlbum
VALUES(NULL,
	(SELECT bandID FROM Band WHERE bandName = 'Luis Miguel'),
	(SELECT albumID FROM Album WHERE albumTitle = 'Romance'));


# Hip-hop

INSERT INTO Playlist
VALUES(NULL, 'Hip-hop');

INSERT INTO Album
VALUES(NULL, 'Take Care', FALSE);

INSERT INTO Song
VALUES(NULL, 'Take Care', '00:04:37', '[Rihanna]
I know you\'ve been hurt by someone else
I can tell by the way you carry yourself
If you let me, here\'s what I\'ll do
I\'ll take care of you
I\'ve loved and I\'ve lost

[Drake – Verse 1]
I\'ve asked about you and they told me things
But my mind didn\'t change
And I still feel the same
What\'s a life with no fun? please don\'t be so ashamed
I\'ve had mine, you\'ve had yours we both know
We know, they don\'t get you like I will
My only wish is I die real
\'Cause that truth hurts, and those lies heal
And you can\'t sleep thinking that he lies still
So you cry still, tears all in the pillow case
Big girls all get a little taste,ah
Pushing me away so I give her space,ah
Dealing with a heart that I didn\'t break
I\'ll be there for you, I will care for you
I keep thinking you just don\'t know
Trying to run from that, say you\'re done with that
On your face girl, it just don\'t show
When you\'re ready, just say you\'re ready
When all the baggage just ain\'t as heavy
And the party\'s over, just don\'t forget me
We\'ll change the pace and we\'ll just go slow
You won\'t ever have to worry,
You won\'t ever have to hide
You\'ve seen all my mistakes
So look me in my eyes

[Rihanna]
\'Cause if you let me, here\'s what I\'ll do
I\'ll take care of you
I\'ve loved and I\'ve lost

[Drake – Verse 2]
Yeah
It\'s my birthday, I\'ll get high if I want to
Can\'t deny that I want you, but I\'ll lie if I have to
\'Cause you don\'t say you love me
To your friends when they ask you
Even though we both know that you do (you do)
One time, been in love one time
You and all your girls in the club one time
All so convinced that you\'re following your heart
\'Cause your mind don\'t control what it does sometimes
We all have our nights though, don\'t be so ashamed
I\'ve had mine, you\'ve had yours, we both know
We know, you hate being alone
You ain\'t the only one
You hate the fact that you bought the dream
And they sold you one
You love your friends but somebody shoulda told you somethin\' to save you
Instead they say,
Don\'t tell me, I don\'t care
If you hurt, I don\'t tell you
You don\'t care, if you\'re true

Don\'t tell me, I don\'t care
If you hurt, I don\'t tell you
You don\'t care, if you\'re true

[Rihanna]
I know you\'ve been hurt by someone else
I can tell by the way you carry yourself
If you let me, here\'s what I\'ll do
I\'ll take care of you
I\'ve loved and I\'ve lost');

INSERT INTO AlbumSong
VALUES(NULL,
	(SELECT albumID FROM Album WHERE albumTitle = 'Take Care'),
	(SELECT songID FROM Song WHERE songTitle = 'Take Care' AND lyrics LIKE '[Rihanna]%'));

INSERT INTO PlaylistSong
VALUES(NULL,
	(SELECT playlistID FROM Playlist WHERE playlistTitle = 'Hip-hop'),
	(SELECT songID FROM Song WHERE songTitle = 'Take Care' AND lyrics LIKE '[Rihanna]%'));


# Bruce Dickinson

INSERT INTO Artist
VALUES(NULL, 'Bruce', 'Dickinson');

INSERT INTO Band
VALUES(NULL, 'Bruce Dickinson');

INSERT INTO BandArtist
VALUES (NULL,
	(SELECT bandID FROM Band WHERE bandName = 'Bruce Dickinson'),
	(SELECT artistID FROM Artist WHERE fName = 'Bruce' AND lName = 'Dickinson'));


INSERT INTO Album
VALUES(NULL, 'Accident of Birth', FALSE);

INSERT INTO BandAlbum
VALUES(NULL,
	(SELECT bandID FROM Band WHERE bandName = 'Bruce Dickinson'),
	(SELECT albumID FROM Album WHERE albumTitle = 'Accident of Birth'));

INSERT INTO Album
VALUES(NULL, 'Seventh Son of a Seventh Son', FALSE);

INSERT INTO Band
VALUES(NULL, 'Iron Maiden');

INSERT INTO BandArtist
VALUES(NULL,
       (SELECT bandID FROM Band WHERE bandName = 'Iron Maiden'),
       (SELECT artistID FROM Artist WHERE fName = 'Bruce' AND lName = 'Dickinson'));

INSERT INTO BandAlbum
VALUES(NULL,
       (SELECT bandID FROM Band WHERE bandName = 'Iron Maiden'),
       (SELECT albumID FROM Album WHERE albumTitle = 'Seventh Son of a Seventh Son'));

# Luciano Pavarotti

INSERT INTO Artist
VALUES(NULL, 'Luciano', 'Pavarotti');

INSERT INTO Band
VALUES(NULL, 'Luciano Pavarotti');

INSERT INTO BandArtist
VALUES (NULL,
	(SELECT bandID FROM Band WHERE bandName = 'Luciano Pavarotti'),
	(SELECT artistID FROM Artist WHERE fName = 'Luciano' AND lName = 'Pavarotti'));


INSERT INTO Album
VALUES(NULL, 'Puccuni: Turandot' , TRUE);

INSERT INTO BandAlbum
VALUES(NULL,
	(SELECT bandID FROM Band WHERE bandName = 'Luciano Pavarotti'),
	(SELECT albumID FROM Album WHERE albumTitle = 'Puccuni: Turandot'));

INSERT INTO Album
VALUES(NULL, 'Luciano', FALSE);

INSERT INTO BandAlbum
VALUES(NULL,
	(SELECT bandID FROM Band WHERE bandName = 'Luciano Pavarotti'),
	(SELECT albumID FROM Album WHERE albumTitle = 'Luciano'));

INSERT INTO Song
VALUES(NULL, 'I\'m Cute', '00:02:05',
       'I\'m cute, yes, it\'s true
I really can\'t help it
But what can I do
When you\'re cute, it just shows
With these two darling eyes
And a cute little nose

And a pretty pink dress
That\'s adorable, yes
And when they see my dimples
Then everyone says

Oh shoot!
Isn\'t she cute, cute, cute
Oh isn\'t she cute, cute, cute

I\'m the one they adore
I\'m sweet and I\'m cuddly
And small just like Dudley but more
It\'s a chore
To be constantly cute
And enchanting to boot

When my lip\'s sticking out
In that cute little pout
Then there\'s just no doubt
Why the guys like to shout

She\'s a beaut!
Let\'s face it, I\'m cute, cute, cute
Oh, baby, she\'s cute, cute, cute

Being cute\'s a thing I can\'t hide
If you look up the word in a book
There\'s my picture inside!
TV Guide
Has me on the cover
Don\' cha just love her?

I\'m simply a goddess
And isn\'t she modest?
I\'m the answer to one of the
Questions on Trivial Pursuit
For "Who\'s the most cute?"

Cute, Cute
Oh, isn\'t she cute, cute, cute

I\'m cute and I\'m sweet
And I\'m innocent, neat
And so trusting
If you want our opinion
This song is becoming disgusting

I\'m cute
So what!
I never am vain
She\'s becoming a pain in the
But I\'m also real nice
I\'m a doll through and through

So big whop-de-do
I\'m sweet and adoring
And also real boring
And that\'s why we\'re snoring at you

That\'s it! You\'ve ruined my entire cute song!
I am angry! I am furious! I am enraged!
I have had it!

You\'re awfully cute when you\'re angry
You really think so?
A babba dabba dooba do wah!
She\'s cute!');

INSERT INTO Song
VALUES(NULL, 'Ain\'t That Cute', '00:03:09',
       'My mama told me I\'m too young to love
But I know what I know and I can\'t get enough
I\'m thinking about you and me holding hands
Pushing you on a swing
We can do anything
Cause when I think of you all I know
Is that there\'s nothing I won\'t do to be with you
Ain\'t that cute - holding hands in the park
Ain\'t that cute - can\'t stay late after dark
Ain\'t that cute - was in love from the start
Ain\'t that cute - I could swear you stole my heart
I often wonder the meaning of love
Is it something meant just for grown-ups?
Nick always told me just to follow my dreams
But with love on my mind it is so hard to see
And still when I think of you all I know
Is that there\'s nothing I won\'t do to be with you
Ain\'t that cute - holding hands in the park
Ain\'t that cute - can\'t stay late after dark
Ain\'t that cute - was in love from the start
Ain\'t that cute - I could swear you stole my heart
It\'s true if I\'m wrong
Then tell me girl what should I do
Or would you even care
If I told you love could be so simple
Between me and you
Oh, baby
Ain\'t that cute - holding hands in the park
Ain\'t that cute - can\'t stay late after dark
Ain\'t that cute - was in love from the start
Ain\'t that cute - I could swear you stole my heart.');

INSERT INTO Song
VALUES(NULL, 'I Am the Cute One', '00:02:14',
       'I am the cute one
It\'s obvious
There\'s no comparing
The two of us

I\'m not to blame
The facts are plain
I\'ve got the looks
I\'ve got the brains
And I am the cute one
She\'s just my sister

I am the cute one
Everyone knows
I\'ve got the profile
She\'s got the nose

She is the older
I am the younger
So after all is it any wonder?
I am the cute one
She\'s just my sister

People say we\'re two peas in a pod
And that we look like each other
There\'s something that they forgot
I am the cute one
She\'s just my sister

(la la la)

I\'m not to blame
The facts are plain
I\'ve got the looks
I\'ve got the brains
And I am the cute one
She\'s just my sister

People say we\'re two peas in a pod
And that we look like each other
There\'s something that they forgot
We\'re not the same whatever you say
I love her and she is OK

But I am the cute one
She\'s just my sister

You wish
I am the cute one
She\'s just my sister

Untrue
I am the cute one
She\'s just my sister

I\'m sorry
I am the cute one
She\'s just my sister');

INSERT INTO Song
VALUES(NULL, 'Cute Without The \'e\' (Cut From The Team)', '00:03:32',
       'Your lipstick, his collar
Don\'t bother, angel
I know exactly what goes on
When everything you\'ll get is everything that you\'ve wanted, princess
(Well, which would you prefer?)
My finger on the trigger, or
(Me face down, down across your floor?)
Me face down, dead across your floor
(Me face down, down across your floor)
Well, just so long as this thing\'s loaded
And will you tell all your friends
You\'ve got your gun to my head?
This all was only wishful thinking
This all was only wishful thinking
And will you tell all your friends
You\'ve got your gun to my head?
This all was only wishful thinking
This all was only wishful thinking
Let\'s go
Don\'t bother trying to explain, angel
I know exactly what goes on when you\'re on, and
How \'bout I\'m outside of your window?
(Well, how \'bout I\'m outside of your window)
Watching him keep the details covered
You\'re such a sucker for a sweet talker, yeah
(You\'re such a sucker)
And will you tell all your friends
You\'ve got your gun to my head?
This all was only wishful thinking
This all was only wishful thinking
And will you tell all your friends (The only thing)
You\'ve got your gun to my head? (I regret)
This all was only wishful thinking (Is that I)
This all was only wishful thinking (I never let you hold me back)
Hoping for the best just hoping nothing happens
A thousand clever lines unread on clever napkins
I will never ask if you don\'t ever tell me
I know you well enough to know you\'ll never love me
Hoping for the best just hoping nothing happens (Why can\'t I feel anything)
A thousand clever lines unread on clever napkins
I will never ask if you don\'t ever tell me (From anyone other than you?)
I know you well enough to know you\'ll never love me
Hoping for the best just hoping nothing happens (Why can\'t I feel anything)
A thousand clever lines unread on clever napkins
I will never ask if you don\'t ever tell me (From anyone other than you?)
I know you well enough to know
And all of this was all your fault
And all of this
(It makes things worse)
I stay wrecked and jealous for this
For this simple reason I
Just need to keep you in mind
As something larger than life
I stay wrecked and jealous for this (She\'ll destroy us all before she\'s through)
For this simple reason I
Just need to keep you in mind (And find a way to blame somebody else)
As something larger than life
I stay wrecked and jealous for this (She\'ll destroy us all before she\'s through)
For this simple reason I
Just need to keep you in mind (And find a way to blame somebody else)
As something larger than life');