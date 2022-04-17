@echo off

set session_file1=%CD%\Data\Local\Session.sublime_session
set session_file2=%CD%\Data\Local\Auto Save Session.sublime_session
rm -rf %session_file1%
rm -rf %session_file2%

set current_date=%date%
set current_time=%time%
set comment=%date%_%time%

git add .
git commit -m "%comment%"
git push