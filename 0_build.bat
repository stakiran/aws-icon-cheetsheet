@echo off

rem - Must be 'drawio desktop' to the PATH as a draw.io.exe
rem - outpath must be generated beforeward.

setlocal
set outpath=%cd%
set ext=png
set cmdline_header=call drawio --export --format %ext%

for %%f in (*.drawio) do (
	echo Converting %%f...
	%cmdline_header% --output %outpath%\%%f.%ext% %%f
)
