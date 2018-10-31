#Breakup your previous script on git into a few functions.
#Add comments to your code.
#Get all the printers currently on the system, loop over them create a folder named after each printer with a .json file in it with information on that specific printer


#Function1 asks the user to input a name and path for the fileserver folder and prompts the user to confirm.
function function1{
write-host "Input a name and path for the fileserver folder." 
write-host "For example: C:\USERS\FILESERVERNAME"
read-host
write-host "Are you sure?"
read-host "Y/N"
}

#Function2 multiply's each number by a number the user enters.
function function2{
$num = "5, 50, 50, 3, 1"
[int]$user = read-host "Enter a number"
foreach ($number in $num) {
    $answer = ($number*$user)
    write-host = "$answer"
    pause
}
}

#Function3 tests the connectivity to a list of servers in the serverlist.csv document.
function function3{
write-host "Now testing connections to the Server List."
$csv = import-csv "e:\serverlist.csv"
foreach ($line in $csv) {
    test-connection "$line"
    pause
}
}

#Function4 shows the link to my github
function function4 {
    https://github.com/thegib00/Lab-5
}

#Function 5 creates folders based on the get-printer commandlet and a json file inside those folders with detailed information on each printer.
function function5 {
    new-item -path "e:\" -name "print" -itemtype "directory"

    $printers = get-printer
    foreach ($print in $printers.name){
        new-item -path "e:\print" -name "$print" -itemtype "directory"
        get-printerproperty -PrinterName "$print" | convertto-json | out-file -filepath "e:\print\$print\$print.json"
    }
}