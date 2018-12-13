#Ask the user what they would like to do, this script will have 3 functions and you must ask the user which one to execute.
#It should also loop once it is done so that it can be run several times.
#Function 1
#Ask the user where they would like to create home drives for users from this CSV employeelist.csv
#Ask the user if they would like to leave a welcome text file in the users home directory.
#Function 2
#List top 5 processes by CPU usage.
#Ask the user which one they would like to kill
#Function 3
#Create a JSON file containing information about the printers on the system
#Ask the users where to save it
Function four {
write-host "Script 1 Creates home drives for users."
write-host "Script 2 Lets you kill a process."
write-host "Script 3 Creates a JSON file about the printers on the system."
$xinput = read-host "Which script do you want to run? 1, 2, or 3?"
if ($xinput -eq "1") {
    one
}
if ($xinput -eq "2") {
    two
}
if ($xinput -eq "3") {
    three
}
}
four
Function one {
    write-host "_______________________________________________________________________"
    $CSV_List = get-content -path "e:\employeelist.csv"
    $CSV_List
    write-host "----------------------------------------------------------"
    read-host "Where would you like to create home drives for users above?"
    write-host "-----------------------------------------------------------------------"
    read-host "Would you like to leave a welcome text file in the users home directory?"
    four
}

Function two {
    $getprocess = get-process
    $getprocess | sort-object -property CPU -descending | select-object -first 5
    write-host "------------------------------------------------"
    $killprocess = read-host "Which process would you like to kill?"
    stop-process $killprocess
    four
}

Function three {
    $getprinter = Get-Printer
    write-host "____________________________________________________________________________________________________________________________________"
    $getprinter
    write-host "------------------------------------------------------------------------------------------------------------------------------------"
    read-host "Where would you like to save this JSON file?"
    four
}
