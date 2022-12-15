# got an app password and not the google password that i used to google gmail
# manage your google account-> security->app password
# enabled imap in gmail
#settings-> see all settings->forwarding and pop/IMAP->enable imap
#made changes in ssmtp.conf file. (path --> / etc/ssmtp/smtp.conf) 
#sudo nano /etc/ssmtp/ssmtp.conf
#server=ayushpanwar691@gmail.com
#mailhub=smtp.gmail.com:587
#AuthUser=ayushpanwar691@gmail.com
#Authpass=app password from google account
#UseTLS=YES --encryption
#UseSTARTTLS=YES
#rewriteDomain=gmail.com
#hostname=ayush-VirtualBox
#FromLineOverride=YES
#save the file
# now we can send email through this shell script
#sudo apt get install mail
#sudo apt install xlsx2csv
#xlsx2csv Student.xlsx > sendMarksEmail.csv
#touch sendMarks.sh
#chmod u+x sendMarks.sh
while IFS=, read -r lineNo name email marks
do
    mail -s "RESULT" "$email" <<< "Hey $name you scored $marks marks."
    echo "Emailed $marks marks to $name whose email id is $email."
done < sendMarksEmail.csv
#./sendMarks.sh

