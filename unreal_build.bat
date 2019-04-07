echo "Build Project . . . . . . ."

"C:\Program Files\Epic Games\UE_4.21\Engine\Binaries\DotNET\UnrealBuildTool.exe" -projectfiles -project="%WORKSPACE%\YourProyect.uproject" -game -rocket -progress

echo "Compile Solution . . . . . . ."

"C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\MSBuild\15.0\Bin\MSBuild.exe" "%WORKSPACE%\YourProyect.sln" /t:build /p:Platform=Win64;verbosity=diagnostic

echo "Build Files . . . . . . ."

"C:\Program Files\Epic Games\UE_4.21\Engine\Build\BatchFiles\RunUAT.bat" BuildCookRun -project="%WORKSPACE%\YourProyect.uproject" -noP4 -platform=Win64 -clientconfig=Development -cook -allmaps -build -stage -pak -archive -archivedirectory="%WORKSPACE%\Builds"

echo "Archive  . . . . . . ."

"C:\Program Files\Epic Games\UE_4.21\Engine\Build\BatchFiles\RunUAT.bat" BuildCookRun -project="%WORKSPACE%\YourProyect.uproject" -noP4 -platform=Win64 -clientconfig=Development -cook -allmaps -NoCompile -stage -pak -archive -archivedirectory="%WORKSPACE%\Builds"
