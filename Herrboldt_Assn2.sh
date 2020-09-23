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
echo "head -n1 Herrboldt_output1.txt > Herrboldt_output.txt" >> Herrboldt_child_script.sh

##sort output 1 by trappability in reverse order
echo "sort -k3rg Herrboldt_output1.txt > Herrboldt_output2.txt" >> Herrboldt_child_script.sh

##get sequence of snakes 13BTS010-13BTS089
echo "grep BTS0[1-8] Herrboldt_output2.txt >> Herrboldt_output.txt" >> Herrboldt_child_script.sh

##remove the unwanted intermediate output files
echo "rm Herrboldt_output1.txt" >> Herrboldt_child_script.sh
echo "rm Herrboldt_output2.txt" >> Herrboldt_child_script.sh

##compress final output
echo "tar -czvf Herrboldt_output.tar.gz Herrboldt_output.txt" >> Herrboldt_child_script.sh

##remove uncompressed file
echo "rm Herrboldt_output.txt" >> Herrboldt_child_script.sh

##RUN THE CHILD SCRIPT YAASSSSSSSSSSS
./Herrboldt_child_script.sh
