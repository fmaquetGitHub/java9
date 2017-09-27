#!/bin/bash

# suppression de tout ce qu'il y a dans modules
rm -rf modules/*



#compilation de Calculatrice
echo "compilation de org.common"
javac  $(find src/org.common -name "*.java") \
      -d modules/org.common	
      

#compilation des test
echo "compilation des org.common.test"
javac --module-path lib:modules	                        \
      $(find src/org.common.test -name "*.java") 		    \
      -d modules/org.common.test	

