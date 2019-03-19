echo off
setlocal

echo Adding vi.bat as a synonym for neovim.
set neovimDir=C:\tools\neovim\Neovim\bin
if exist %neovimDir% (
    echo Adding 'vi' synonym for NeoVim.
    echo @start %neovimDir%\nvim-qt.exe -qwindowgeometry 880x800 %%* > %neovimDir%\vi.bat
)

echo Adding neovim to the context menu.
regedit NeovimContextMenu.reg

echo Creating vim backup folder ~/Bak
mkdir %userprofile%\Bak
