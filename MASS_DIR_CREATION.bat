@echo off
echo -----------------------
echo MASS DIRECTORY CREATION
echo -----------------------
echo v1.0.0
echo -----------------------
echo WARNING: This program will create folders within in the folder from which this program is located.
echo -----------------------
echo -
set /p fileName= Please enter the name of the text file containing the names of the subfolders you wish to create (NOT input.txt, instead input):: 
echo We will use the file:: %fileName%.txt
FOR /F "tokens=* delims=" %%x in (%fileName%.txt) DO mkdir %%x
echo Done!
pause