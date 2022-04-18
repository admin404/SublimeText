@echo off

set session_file1=%CD%\Data\Local\Session.sublime_session
set session_file2="%CD%\Data\Local\Auto Save Session.sublime_session"
del /f %session_file1%
del /f %session_file2%

set current_date=%date%
set current_time=%time%
set comment=%date%_%time%

git add .
git commit -m "%comment%"
git push
pause>nul