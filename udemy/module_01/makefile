calculator.exe: ConfigEnv ConfigOut Build\main.obj Build\adder.obj Build\divider.obj Build\printer.obj
	link Build\\main.obj Build\\adder.obj Build\\divider.obj Build\\printer.obj /OUT:"Release\\calculator.exe"

ConfigEnv:
	set msvc_path=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.38.33130
	set wkit_path=C:\Program Files (x86)\Windows Kits\10

	set INCLUDE=%msvc_path%\include;%INCLUDE%%
	set INCLUDE=%wkit_path%\Include\10.0.22621.0\ucrt;%INCLUDE%%

	set LIB=%msvc_path%\lib\x64;%LIB%%
	set LIB=%wkit_path%\Lib\10.0.22621.0\ucrt\x64;%LIB%%
	set LIB=%wkit_path%\Lib\10.0.22621.0\um\x64;%LIB%%

ConfigOut:
	if not exist Build\\ mkdir Build\\
	if not exist Release\\ mkdir Release\\

Build\main.obj: main.cpp
	cl main.cpp /Fo"Build\\main" /EHsc /c

Build\adder.obj: adder.cpp
	cl adder.cpp /Fo"Build\\adder" /EHsc /c

Build\divider.obj: divider.cpp
	cl divider.cpp /Fo"Build\\divider" /EHsc /c

Build\printer.obj: printer.cpp
	cl printer.cpp /Fo"Build\\printer" /EHsc /c
