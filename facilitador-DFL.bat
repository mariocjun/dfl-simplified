@echo off
MODE con:cols=41 lines=23
cls
:menu
cls
color 80

echo %date% - %time%
echo Computador: %computername%    Usuario: %username%  
echo       DEEPFACELAB - Simplificado
echo  ======================================
echo * 1.  Abrir Workspace                  * 
echo * 2.  Limpar pasta workspace           *
echo * 3.  Extrair frames de video fonte    *
echo * 4.  Extrair frames de video destino  *
echo * 5.  Extrair rostos de video fonte    *
echo * 6.  Extrair rostos de video destino  * 
echo * 7.  Ordenar rostos de video fonte    *
echo * 8.  Ordenar rostos de video destino  *
echo * 9.  Treinar o algoritmo              *
echo * 10. Editar resultado                 *
echo * 11. Converter para MP4               *
echo * 12. Abrir results.mp4                *
echo * 13. Pagina Oficial en-US             *
echo *  0. Sair                             *
echo  ======================================

set WORKSPACE=%INTERNAL%\..\workspace

set /p opcao= Escolha uma opcao: 

echo  **************************************
echo          Opcao %opcao% selecionada
echo  **************************************

if %opcao% equ 0 goto opcao0
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8
if %opcao% equ 9 goto opcao9
if %opcao% equ 10 goto opcao10
if %opcao% equ 11 goto opcao11
if %opcao% equ 12 goto opcao12
if %opcao% GEQ 13 goto opcao13

:opcao0
pause
cls
exit

:opcao1
cd DeepFaceLab_NVIDIA
start WORKSPACE
goto menu

:opcao2
cd DeepFaceLab_NVIDIA
call "1) clear workspace.bat"
@echo off
goto menu

:opcao3
cd DeepFaceLab_NVIDIA
call "2) extract images from video data_src.bat"
goto menu

:opcao4
cd DeepFaceLab_NVIDIA
cls
call "3) extract images from video data_dst FULL FPS.bat"
goto menu

:opcao5
cd DeepFaceLab_NVIDIA
cls
call "4) data_src faceset extract.bat"
goto menu

:opcao6
cd DeepFaceLab_NVIDIA
call "5) data_dst faceset extract.bat"
cls
goto menu

:opcao7
cd DeepFaceLab_NVIDIA
call "4.2) data_src sort.bat"
cls
goto menu

:opcao8
cd DeepFaceLab_NVIDIA
call "5.2) data_dst sort.bat"
cls
goto menu

:opcao9
cd DeepFaceLab_NVIDIA
call "6) train SAEHD.bat"
cls
goto menu

:opcao10
cd DeepFaceLab_NVIDIA
call "7) merge SAEHD.bat"
cls
goto menu

:opcao11
cd DeepFaceLab_NVIDIA
call "8) merged to mp4.bat"
cls
goto menu

:opcao12
cd DeepFaceLab_NVIDIA
start result.mp4
cls
goto menu

:opcao13
cd DeepFaceLab_NVIDIA
start changelog.html
cls
goto menu




