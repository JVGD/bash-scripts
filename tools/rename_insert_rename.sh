for file in 4*
do   
    mv $file "${file:0:4}_${file/*_prc/wed}"
done
