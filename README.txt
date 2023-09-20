Make Windows Great Again

Okay it never was.
Also, the best I can do is usable.

Hacks to make this unreliable 'system' work somewhat similar to a computer


*** Having the most basic utils available in your PATH:

Create a directory C:\xbin (that will be our playground)
Add to PATH in Advanced System Settings -> Environment variables

Install git for windows
Copy git bash binaries:
- create list of exe files, run them as commands (w/o .exe) and copy those which are 'command not found'
- create list of copied exe files, cygcheck them. copy dlls as needed
- add %HOME% to user's env vars
- setx /M MAGIC c:\xbin\share\magic.mgc (also copy MIME magic file there)
- create \tmp - can't manage rights :/


*** Means to open old .hlp files:

winhlp32:
- download w8.1 winhlp32.exe and copy to path (C:\xbin)
- search registry for winhlp32 and alter as needed
