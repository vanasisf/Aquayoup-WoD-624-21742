@echo off

TITLE Groupeur de .sql

:menu

echo.

echo              #####################################################

echo              #  Bienvenue sur le regroupeur de fichier .sql  #

echo              #####################################################

echo.

echo.

echo                Pour regrouper vos .sql puis quitter tapez : R

echo                     Pour quitter ce programme tapez : Q

echo.

set /p info=                            Votre Choix(R/Q):

if %info%==R goto group.

if %info%==r goto group.

if %info%==Q goto quit.

if %info%==q goto quit.

echo

:group.

copy *.sql "_FichierRegrouper".sql

echo.

echo.                   #####################################

echo                    #  Vos .sql on bien ete regrouper ! #

echo.                   #####################################

echo.

pause

exit

:quit.

exit