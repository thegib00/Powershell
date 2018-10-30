#Ask a user to input a number and using if statements tell the user if it is higher or lower then a number you pick out.
#Using Get-Process get only the StartTime property and store it in a variable
#Using a loop print each line of the variable you stored the start times in, and have it print the start time each time the loop runs and a message telling the user what it is outputting.
#Using git make a local copy of this repository https://github.com/PowerShell/PowerShell

[int]$userinputednumber = read-host "input a number"
$blah = 50
if ($userinputednumber -eq $blah) {
    Write-Host "You guessed correctly"
}
if ($userinputednumber -gt $blah) {
    write-host "it is higher then"
}
if ($userinputednumber -gt $blah) {
    write-host "it is lesser then"
}
# OR USE ELSE AND ELSE
# [int]$userinputednumber = read-host "input a number"
# $blah = 50
# if ($userinputednumber -eq $blah) {
#    Write-Host "You guessed correctly"
#}
# elseif ($userinputednumber -gt $blah) {
#    write-host "it is higher then"
#}
#else {
#    write-host "it is lesser then"
#}


$starttimes = get-process

foreach($blah2 in $starttimes.starttime){
    write-host "The start time is $blah2"
}

git clone