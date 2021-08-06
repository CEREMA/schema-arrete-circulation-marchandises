@echo off

call setenv.bat

%python% schema-to-md-page.py
%python% schema-to-md-table.py

pause