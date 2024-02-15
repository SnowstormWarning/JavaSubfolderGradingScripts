@echo off
echo ------------------
echo JAVA MASS COMPILER
echo ------------------
echo v1.0.0
echo ------------------
set /p fileNameToCompile= Enter File Name To Compile ( Not Proj3.java, instead Proj3 ) ::
echo COMPILING FILES NAMED %fileNameToCompile%.java in ALL SUBFOLDERS...
echo ------------------
FOR /D /r %%G in (.) DO (
 Pushd %%G
 echo ATTEMPTING TO COMPILE IN: %%G
 javac %fileNameToCompile%.java
 echo ------------------
 Popd
)
echo done...
echo ------------------
pause