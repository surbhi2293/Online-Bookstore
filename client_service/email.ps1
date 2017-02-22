$emailTo = $args[0]

#echo $emailTo
#echo $sub
#echo $bdy


$EmailFrom = "surbhimathur@gmail.com"
#$EmailTo = "surbhimathur@gmail.com"
$EmailTo = $emailTo
$Subject = "Message Received"
$Body = "Thanks for contacting us"


$SMTPServer = "smtp.gmail.com"
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPClient.EnableSsl = $true
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("surbhimathur@gmail.com", "localhost123");
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)
