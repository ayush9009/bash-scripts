. './BashModules.sh'
letter='a'
for file in Screenshots/*
do      
       mv "$file" "Screenshots/image_$letter.png"
       letter=$(charToAscii $letter)
       letter=`expr $letter + 1`
       letter=$(asciiToChar $letter)
done        

