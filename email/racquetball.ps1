$MyVariable = @"
I'd like to reserve the back racquetball court for Monday and Wednesday at 6 PM, please.
</br></br>
Chris
"@

send-mailmessage -to tlhoagland@manchester.edu -from cschott@manchester.edu -Subject "racquetball court reservation" -body $MyVariable  -smtpserver 10.90.254.73 -BodyAsHtml