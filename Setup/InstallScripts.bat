echo off
setlocal
:: Add vi.bat as a synonym for neovim or gvim.
set neovimDir="C:\tools\neovim\Neovim\bin"
set gvimDir="C:Program Files (x86)\Vim\vim80"
if exist neovimDir (
    echo %neovimDir%
    echo %neovimDir%\nvim-qt.exe -qwindowgeometry 880x800 ^%* > %neovimDir%\vi.bat
)
if exist gvimDir (
    echo %gvimDir%
    echo %gvimDir%\gvim.exe ^%* > %gvimDir%\vi.bat
)
:: XXX Finish this!
