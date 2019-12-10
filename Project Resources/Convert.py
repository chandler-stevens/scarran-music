import json
import sys
import os
from scipy.io import arff
import pandas as pd



with open(populate + ".sql", "w") as filesql:
	#opens Band file and uses to iterate.
	with open(sys.argv[1], "r") as file:
		#open other relevant files here
		data = file.readlines()

            
		#write bands here
		for line in data:
			filesql.write("INSERT INTO Band VALUES (")
#   NULL,
#   'Coldplay' 
			filesql.write(");\n")






		file.close()
#opens Artist file and uses to iterate.
	with open(sys.argv[1], "r") as file:
		#open other relevant files here
		data = file.readlines()


            
		for line in data:
			filesql.write("INSERT INTO Artist VALUES (")
		
#   NULL,
#   'Chris',
#   'Martin'
			filesql.write(");\n")



		file.close()	
#opens BandArtist file and uses to iterate.
	with open(sys.argv[1], "r") as file:
		#open other relevant files here
		data = file.readlines()


            
		for line in data:
			filesql.write("INSERT INTO BandArtist VALUES (")		
#   NULL,
#  (SELECT bandID FROM Band
#   WHERE bandName = 'Coldplay'),
#  (SELECT artistID FROM Artist
#   WHERE fName = 'Chris'
#   AND lName = 'Martin')
			filesql.write(");\n")



		file.close()
#opens label file and uses to iterate.
	with open(sys.argv[1], "r") as file:
		#open other relevant files here
		data = file.readlines()


            
		for line in data:
			filesql.write("INSERT INTO Label VALUES (")		
#   NULL,
#   'Parlophone'
			filesql.write(");\n")



		file.close()
#opens albums file and uses to iterate.
	with open(sys.argv[1], "r") as file:
		#open other relevant files here
		data = file.readlines()


            
		for line in data:
			filesql.write("INSERT INTO Album VALUES (")	
#   NULL,
#   'Viva la Vida or Death and All His Friends',
#   FALSE
			filesql.write(");\n")



		file.close()
#opens bandalbums file and uses to iterate.
	with open(sys.argv[1], "r") as file:
		#open other relevant files here
		data = file.readlines()


            
		for line in data:
			filesql.write("INSERT INTO BandAlbum VALUES (")	
#   NULL,
#   (SELECT bandID FROM Band
#    WHERE bandName = 'Coldplay'),
#   (SELECT albumID FROM Album
#    WHERE albumTitle = 'Viva la Vida or Death and All His Friends')
			filesql.write(");\n")



		file.close()
#opens albumlabel file and uses to iterate.
	with open(sys.argv[1], "r") as file:
		#open other relevant files here
		data = file.readlines()


            
		for line in data:
			filesql.write("INSERT INTO AlbumLabel VALUES (")	
#   NULL,
#   (SELECT albumID FROM Album
#    WHERE albumTitle = 'Viva la Vida or Death and All His Friends'),
#   (SELECT labelID FROM Label
#    WHERE labelName = 'Parlophone')
			filesql.write(");\n")



		file.close()
#opens Song file and uses to iterate.
	with open(sys.argv[1], "r") as file:
		#open other relevant files here
		data = file.readlines()


            
		for line in data:
			filesql.write("INSERT INTO Song VALUES (")	
#   NULL,
#   'Viva la Vida',
#   '00:04:01',
#   'lyrics' add \ to 's
			filesql.write(");\n")



		file.close()
#opens AlbumSong file and uses to iterate.
	with open(sys.argv[1], "r") as file:
		#open other relevant files here
		data = file.readlines()


            
		for line in data:
			filesql.write("INSERT INTO AlbumSong VALUES (")	
#   NULL,
#   (SELECT albumID FROM Album
#    WHERE albumTitle = 'Viva la Vida or Death and All His Friends'),
#   (SELECT songID FROM Song
#    WHERE songTitle = 'Viva la Vida'
#    AND lyrics LIKE 'I used to rule the world%')
			filesql.write(");\n")



		file.close()
#opens BandSong file and uses to iterate.
	with open(sys.argv[1], "r") as file:
		#open other relevant files here
		data = file.readlines()


            
		for line in data:
			filesql.write("INSERT INTO AlbumSong VALUES (")	
#   NULL,
#   (SELECT bandID FROM Band
#    WHERE bandName = 'Coldplay'),
#   (SELECT songID FROM Song
#    WHERE songTitle = 'Viva la Vida'
#    AND lyrics LIKE 'I used to rule the world%')
			filesql.write(");\n")



		file.close()
#opens Playlist file and uses to iterate.
	with open(sys.argv[1], "r") as file:
		#open other relevant files here
		data = file.readlines()


            
		for line in data:
			filesql.write("INSERT INTO Playlist VALUES (")	
#   NULL,
#   'Coldplay Live 2014'
			filesql.write(");\n")



		file.close()
#opens PlaylistSong file and uses to iterate.
	with open(sys.argv[1], "r") as file:
		#open other relevant files here
		data = file.readlines()


            
		for line in data:
			filesql.write("INSERT INTO PlaylistSong VALUES (")	
#   NULL, 
#   (SELECT playlistID FROM Playlist
#    WHERE playlistTitle = 'Coldplay Live 2014'),
#   (SELECT songID FROM Song
#    WHERE songTitle = 'Viva la Vida'
#    AND lyrics LIKE 'I used to rule the world%')
			filesql.write(");\n")



		file.close()
#opens Concert file and uses to iterate.
	with open(sys.argv[1], "r") as file:
		#open other relevant files here
		data = file.readlines()


            
		for line in data:
			filesql.write("INSERT INTO Concert VALUES (")	
#   NULL,
#   (SELECT playlistID FROM Playlist
#    WHERE playlistTitle = 'Coldplay Live 2014'),
#   'Royal Albert Hall, London, England',
#   '2014-07-01'
			filesql.write(");\n")



		file.close()
                
    
filesql.close()	
     
       
        
sys.exit(0)