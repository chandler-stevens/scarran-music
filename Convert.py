import json
import sys
import os
from scipy.io import arff
import pandas as pd



with open(populate + ".sql", "w") as filesql:
	#opens bands file and uses to iterate.
	with open(sys.argv[1], "r") as file:
		#open other relevant files here
		data = file.readlines()

            
		#write bands here
		for line in data:
			filesql.writelines("INSERT INTO Artist VALUES (")
		

			filesql.writelines(");\n")






	#opens artists file and uses to iterate.
	with open(sys.argv[1], "r") as file:
		#open other relevant files here
		data = file.readlines()


            
		#write artists here
		for line in data:
			filesql.writelines("INSERT INTO Band VALUES (")
		

			filesql.writelines(");\n")
		
                
    
	
     
       
        
sys.exit(0)