#Creating a folder called fileserver at the root of the C:
#Import the CSV provided with the assignment, and store it in a variable
#Create a folder for each of the users in the csv, the folder name should be their name with no spaces or capitalization
#Inside each of their folders you should create a hello.txt file that gives them a welcome message

new-item "e:\fileserver" -type "directory"
$csv = import-csv "e:\employeelist.csv"

foreach ($line in $csv.name.tolower().replace(' ','')) {
    new-item -type "directory" -name "$line" -path "e:\fileserver\"
    new-item -name "hello.txt" -path "e:\fileserver\$line" 
    add-content -value "Welcome to the File Server!" -path "e:\fileserver\$line\hello.txt"
}