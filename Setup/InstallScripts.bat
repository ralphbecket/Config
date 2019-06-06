echo off
setlocal

set root=%~dp0

echo Adding vi.bat as a synonym for neovim.
set neovimDir=C:\tools\neovim\Neovim\bin
if exist %neovimDir% (
    echo Adding 'vi' synonym for NeoVim.
    echo @start %neovimDir%\nvim-qt.exe -qwindowgeometry 880x800 %%* > %neovimDir%\vi.bat
)

echo Adding neovim to the context menu.
regedit "%root%\NeovimContextMenu.reg"

echo Setting Caps Lock as an alternative Ctrl key (active from next login).
regedit "%root%\SetCapsAsCtrl.reg"

echo Creating Vim backup folder ~/Bak
mkdir "%userprofile%\Bak"

echo Installing init.vim and _vimrc Vim start-up scripts.
copy "%root%\init.vim" "%localappdata%\nvim\init.vim"
copy "%root%\_vimrc" "%userprofile%\_vimrc"
