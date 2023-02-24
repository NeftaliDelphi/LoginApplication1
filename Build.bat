call "c:\Program Files (x86)\Embarcadero\Studio\22.0\bin\rsvars.bat" 
call clear.bat

echo Compilando.......
C:\WINDOWS\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe "c:\ProyectosDelphi\LoginApplication1\LoginProject1.dproj"  /m:4 /t:Clean,Build  "/P:Config=Debug;Platform=Win32;BuildInParallel=false"
C:\WINDOWS\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe "c:\ProyectosDelphi\LoginApplication1\Tests\PTelefonoTestsProject.dproj "  /m:4 /t:Clean,Build  "/P:Config=Debug;Platform=Win32;BuildInParallel=false" 


