@echo off
echo ------------------
echo JAVA MASS COMPILER
echo ------------------
echo v1.0.0
echo ------------------
echo COMPILING FILES NAMED ALL CS FILES in ALL SUBFOLDERS...
echo ------------------
FOR /D /r %%G in (.) DO (
 Pushd %%G
 echo ATTEMPTING TO COMPILE IN: %%G
 csc *.cs
 echo ------------------
 Popd
)
echo done...
echo ------------------
pause