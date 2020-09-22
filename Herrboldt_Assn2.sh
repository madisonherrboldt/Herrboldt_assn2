#! /bin/bash

##create child script
touch Herrboldt_child_script.sh

##give permissions to run child script
chmod u+x Herrboldt_child_script.sh

##add shebang to child script
echo "#! /bin/bash" >> Herrboldt_child_script.sh

##cut and extract columns 1 to 3 (ID Year and Trappability)
echo "cut -f 1-2,4 BTS_data.txt > Herrboldt_output1.txt" >> Herrboldt_child_script.sh

##steal the heading from output 1 and transfer to new output file

