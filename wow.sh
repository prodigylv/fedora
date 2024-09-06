sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/40/winehq.repo
sudo dnf install winehq-stable
sudo dnf install winetricks
sudo dnf install glibc.i686 libstdc++.i686
