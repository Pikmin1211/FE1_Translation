
@echo off

set "base_dir=%~dp0"
set "source_rom=%~dp0FE1_EN.nes"
set "main_event=%~dp0ROMBuildfile.event"
set "target_rom=%~dp0FE1_EN_hack.nes"

echo:
echo Copying ROM...
echo:

copy "%source_rom%" "%target_rom%"

echo:
echo Compiling...
echo:

cd "%base_dir%EventAssembler"
ColorzCore A FE1 "-output:%target_rom%" "-input:%main_event%" "--nocash-sym" "--build-times"

echo Done!
echo:

pause
