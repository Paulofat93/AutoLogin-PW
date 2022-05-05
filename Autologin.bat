echo off
cls
title Autologin
color 2
rem goto 2
:1
cls
rem ---- MOSTRAR IP ----
echo .
for /F "delims=: tokens=2" %%a in ('ipconfig ^| find "IPv4"') do echo SEU IP ATUAL: %%a

rem ---- CONTINUAR OU PARAR ----
echo .
echo .
echo ***********************************
echo **       CONTINUAR O LOGIN?      **
echo ***********************************
echo **    Pressione S para Logar     **
echo ** ou qualquer outra para fechar **
echo ***********************************
echo .
set /p c= Deseseja Continuar?
if %c% equ s goto 2
if %c% equ S goto 2
if %c% neq s goto 3


:2
rem ---- PASTA DO JOGO ----
cd ""C:\Level Up\Perfect World\element\x64""
echo ABRINDO AS CONTAS

rem ---- Auto Login ----
rem ---- Exemplo -------
rem Start "" "C:\Level Up\Perfect World\element\x64\elementclient_64.exe" startbypatcher user:Conta pwd:Senha123 role:NomeChar
rem role não é nescessario irá parar na tela de seleção de personagem

Start "" "C:\Level Up\Perfect World\element\x64\elementclient_64.exe" startbypatcher user:#### pwd:####
Start "" "C:\Level Up\Perfect World\element\x64\elementclient_64.exe" startbypatcher user:#### pwd:####
Start "" "C:\Level Up\Perfect World\element\x64\elementclient_64.exe" startbypatcher user:#### pwd:####
Start "" "C:\Level Up\Perfect World\element\x64\elementclient_64.exe" startbypatcher user:#### pwd:####

goto 3

:3
exit