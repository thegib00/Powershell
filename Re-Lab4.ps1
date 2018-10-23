#Creating a folder called fileserver at the root of the C:
#Import the CSV provided with the assignment, and store it in a variable
#Create a folder for each of the users in the csv, the folder name should be their name with no spaces or capitalization
#Inside each of their folders you should create a hello.txt file that gives them a welcome message

new-item "c:\fileserver" -type "directory"
$csv = import-csv "c:\employeelist.csv"
foreach ($_ in $csv) {
    new-item  -type "directory"
}