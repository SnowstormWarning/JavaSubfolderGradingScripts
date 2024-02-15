# JavaSubfolderGradingScripts

### Sierra Hawbaker

v1.0.0

This repo is collection of useful scripts and tools I use for grading. There is no acedemic or personal information in this repo. It is simply the batch files and an example text file, nothing more.

## Usage

### SOURCING NAMES

names.txt

This file is for you to populate the names of the subfolders you need to create. In the case of grading, this should be the last name of the student. You can either have each name seperated by spaces or have them on their own line, however, they must be one word (you can use underscores or other marks if needed). Additionally, any other text file, as long as it is in the same directory as the MASS_DIRECTORY_CREATION.bat file, it can work.

For Example, the file currently looks like this::

Student_Last_Name_One
Student_Last_Name_Two
Student_Last_Name_Three
Student_Last_Name_Four
Student_Last_Name_Five

### DIRECTORY CREATION

MASS_DIR_CREATION.bat

This batch script will simply prompt you for the name of the txt file that contains the names of the subfolders you wish to create, see above. Make sure you supply it with a name that does not contain the file type, ie, "names" instead of "names.txt". It requires the text file to be in the same directory as the bat file. The subfolders will be created in the same directory as the bat file.

### MASS COMPILING JAVA SOURCE FILES

MASS_COMP_JAVA_SOURCE.bat

This batch script will go through each subfolder in the directory of where the bat file is located (NOTE: THIS INCLUDES SUBFOLDERS OF SAID SUBFOLDERS), and it will attempt to compile the java source file of the specified name you input. Make sure you supply it with a name that does not contain the file type, ie, "Proj1" instead of "Proj1.java". It is fine if there are subfolders, or students, who don't have a file. The javac command ran on the subfolder will simply say it failed to find the file. If the compilation is successful, there will be no output as is normal for javac.

### General Grading Stratagem 

1. Create student subfolders (if they do not exist already) (see above).

2. Download and place the java source file from each student into the appropriate folder. 

3. Run the MASS_COMP_JAVA_SOURCE.bat file to compile each student's file, noting which fail for grading purposes.

4. Run and check each compiled java program as normal.

5. If the project or lab requires that you change the source code for students, I will sometimes do this in one fell swoop. Then, I will rerun the MASS_COMP_JAVA_SOURCE.bat file to recompile each student at once.

Note that when you grade a project in the future, you do not need to get rid of the prior source code as the new project will obviously have a new name. This program does NOT correct for files renamed by canvas, that you must do manually (consider the Canvas renamed Proj1-1.java files).
