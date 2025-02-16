call "C:\Program Files (x86)\Embarcadero\Studio\23.0\Bin\rsvars.bat"

set BuildParams= /t:Build /p:Config=Release;Platform=Win64
set Directives= /property:DCC_Define="RELEASE;FOO"

msbuild MyProject.dproj %BuildParams% %Directives%
