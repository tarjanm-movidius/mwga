Make Windows Great Again

JK it never was great.
Also, the best I can do is usable.


The idea is to have your trusty *NIX tools in whatever command interpreter you may use. There are
a number of flavours of this out there, but neither is recommended to add to PATH as command names
may overlap and break native scripts. Therefore this is a collection of the non-colliding utils,
with the colliding names changed to <name>x.
There are also tools included to add raw view featres to Total Commander.
And a script to (loop) kill unwanted services and software that are otherwise impossible to opt
out of.


INSTALLATION

Copy directory xbin to C:\xbin
Edit Advanced System Settings -> Environment variables:
  Path in 'System variables' -> Edit -> add C:\xbin after last line
  MAGIC in 'System variables' (new). Value: C:\xbin\share\magic.mgc
  HOME in 'User variables for <youruser>' (new). Value: C:\Users\<youruser>
Search through registry for 'winhlp32' and alter all 'open' instances to 'C:\xbin\winhlp32.exe %1'
Task Scheduler -> Microsoft -> Windows:
  Application Experience - right click on each task: DISABLE
  Customer Experience Improvement Program - right click on each task: DISABLE
  Device Information - right click on each task: DISABLE
Copy files in tcmd_hacks to Total Commander install folder
In Configuration -> Options -> Edit/View -> Associations add new extesions:
  doc  - %COMMANDER_PATH%\DOCVIEW.CMD "%1"
  docx - %COMMANDER_PATH%\DOCXVIEW.CMD "%1"
  dotx - %COMMANDER_PATH%\DOCXVIEW.CMD "%1"
  dll  - %COMMANDER_PATH%\ELFVIEW.CMD "%1"
  elf  - %COMMANDER_PATH%\ELFVIEW.CMD "%1"
  exe  - %COMMANDER_PATH%\ELFVIEW.CMD "%1"
  odf  - %COMMANDER_PATH%\ODTVIEW.CMD "%1"
  ods  - %COMMANDER_PATH%\ODTVIEW.CMD "%1"
  odt  - %COMMANDER_PATH%\ODTVIEW.CMD "%1"
  pdf  - %COMMANDER_PATH%\PDFVIEW.CMD "%1"
  hlp  - C:\xbin\winhlp32.exe "%1"


Controlling unwanted apps and services

This only works as a continuously running service, task scheduler every 5min (and then running in
like 5 instances after a few days) doesn't cut it. After bootup, start cmd.exe as admin, run
killemall.bat. It starts killemall.sh that reads kill.lst and checks every 5 seconds for tasks in
it to kill.
