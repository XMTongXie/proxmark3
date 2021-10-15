@echo off
color 0a
MODE CON COLS=80 LINES=36
title Bootrom FLASH FILE
echo.
echo.
echo.
echo   =============================================================================
echo   ©¦!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! O__O !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!©¦
echo   ©¦===========================================================================
echo   ©¦NEW CDC (Serial) Bootrom FLASHER BATCH FILE                              ©¦
echo   ©¦                                                                         ©¦
echo   ©¦     USE THIS FILE IF YOU HAVE THE OLD USB BOOTLOADER !                  ©¦
echo   ©¦                                                                         ©¦
echo   ©¦you will need to have this batch in \win32 folder                        ©¦
echo   ©¦you will need to have flasher-OLD.exe in \win32 folder                   ©¦
echo   ©¦you will need to have bootrom.elf in \firmware_win\bootrom folder        ©¦
echo   ©¦                                                                         ©¦
echo   ©¦                                                                         ©¦
echo   ©¦   ! FLASHING BOOTROM CAN BE EXTREMELY DANGEROUS !                       ©¦
echo   ©¦     ! FLASHING BOOTROM CAN BE EXTREMELY DANGEROUS !                     ©¦
echo   ©¦       ! FLASHING BOOTROM CAN BE EXTREMELY DANGEROUS !                   ©¦
echo   ©¦         ! FLASHING BOOTROM CAN BE EXTREMELY DANGEROUS !                 ©¦
echo   ©¦           ! FLASHING BOOTROM CAN BE EXTREMELY DANGEROUS !               ©¦
echo   ©¦             ! FLASHING BOOTROM CAN BE EXTREMELY DANGEROUS !             ©¦
echo   ©¦               ! FLASHING BOOTROM CAN BE EXTREMELY DANGEROUS !           ©¦
echo   ©¦                 ! FLASHING BOOTROM CAN BE EXTREMELY DANGEROUS !         ©¦
echo   ©¦                   ! FLASHING BOOTROM CAN BE EXTREMELY DANGEROUS !       ©¦
echo   ©¦                     ! FLASHING BOOTROM CAN BE EXTREMELY DANGEROUS !     ©¦
echo   ©¦                       ! FLASHING BOOTROM CAN BE EXTREMELY DANGEROUS !   ©¦
echo   ©¦                                                                         ©¦
echo   ©¦                                                                         ©¦
echo   ©¦IF YOU HAVE THOSE REQUISITES                                             ©¦
echo   ©¦               HIT ANY BUTTON TO CONTINUE AT YOUR OWN RISK !!!           ©¦
echo   ©¦-------------------------------------------------------------------------©¦
echo   =============================================================================
pause.

cls
echo.
echo      .-.     .-.     .-.     .-.     .-.     .-.     .-.     .-.     .-. 
echo    .'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `.
echo   (    .     .-.     .-.     .-.     .-.     .-.     .-.     .-.     .    )
echo    `.   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   .'
echo      )    )                                                       (    (
echo    ,'   ,'                                                         `.   `.
echo   (    (     1 - DISCONNECT PM3 FROM USB                             )    )
echo    `.   `.                                                         .'   .' 
echo      )    )                                                       (    (
echo    ,'   ,'   2 - KEEP THE PM3 BUTTON PRESSED AND HOLD IT PRESSED   `.   `.
echo   (    (                                                             )    )
echo    `.   `.                                                         .'   .' 
echo      )    )  3 - WHILE KEEPING IT PRESSED CONNECT PM3 TO USB      (    (
echo    ,'   ,'                                                         `.   `.
echo   (    (                                                             )    )
echo    `.   `.   4 - AFTER PM3 IS RECOGNIZED BY WINDOWS, AND YOU       .'   .' 
echo      )    )      ARE STILL HOLDING DOWN THE PM3 BUTTON,           (    (
echo    ,'   ,'       HIT ANY KEYBOARD BUTTON TO START FLASHING         `.   `.
echo   (    (                                                             )    )
echo    `.   `.                                                         .'   .' 
echo      )    )       _       _       _       _       _       _       (    (
echo    ,'   .' `.   .' `.   .' `.   .' `.   .' `.   .' `.   .' `.   .' `.   `.
echo   (    '  _  `-'  _  `-'  _  `-'  _  `-'  _  `-'  _  `-'  _  `-'  _  `    )
echo    `.   .' `.   .' `.   .' `.   .' `.   .' `.   .' `.   .' `.   .' `.   .'
echo      `-'     `-'     `-'     `-'     `-'     `-'     `-'     `-'     `-'
pause.



cls
echo.
echo                 ============================================
echo                 FLASHING new CDC bootrom.elf, please wait...
echo                 ============================================
echo.
flasher-OLD.exe -b ..\firmware_win\bootrom\bootrom.elf

pause.

cls
title DONE
echo.
echo   ___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___
echo  /   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \
echo  \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/
echo  /   \___/                                                   \___/   \
echo  \___/                                                           \___/
echo  /   \                                                           /   \
echo  \___/                                                           \___/
echo  /   \       FLASHING OPERATION SUCCESSFUL ! Enjoy it !          /   \
echo  \___/                                                           \___/
echo  /   \        YOU CAN NOW RELEASE THE PM3 BUTTON !!!  ;)         /   \
echo  \___/                                                           \___/
echo  /   \                                                           /   \
echo  \___/                                                           \___/
echo  /   \                                  BATCH FILE BY ASPER      /   \
echo  \___/                                                           \___/
echo  /   \___                                                     ___/   \
echo  \___/   \___     ___     ___     ___     ___     ___     ___/   \___/
echo  /   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \
echo  \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/
echo      \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/

echo.
pause.
cls
MODE CON COLS=130 LINES=36
cmd.exe