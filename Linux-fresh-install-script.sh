
# Run this script directly from GitHub using this command in the terminal:
# curl -fsSL https://raw.githubusercontent.com/Aluulu/Personal-Scripts/main/Linux-fresh-install-script.sh | sh

# Update the system using DNF upgrade
sudo dnf upgrade


# Set the command cls to be an alias for clear. This means I can use cls to clear my console just like in Windows
echo 'alias cls="clear"' >> .bashrc


# Install TimeShift and set up a backup. This is done before installing any software
# Timeshift is software that takes backups of core system files (not user documents). This helps protect against any unforseen issues
sudo dnf install timeshift
sudo timeshift --create --comments "Backup created on Startup script"
# Command was taken from here: https://dev.to/rahedmir/how-to-use-timeshift-from-command-line-in-linux-1l9b


# Installing additional software

# FastFetch is a alternative to neofetch that improves the speed and information displayed
sudo dnf install fastfetch.x86_64
# Sets the command neofetch to be the same as neofetch. This allows me to use my muscle memory and use neofetch rather than using a different command
# .bashrc is in /home/~/.bashrc
echo 'alias neofetch="fastfetch"' >> .bashrc


flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub com.spotify.Client
flatpak install flathub com.valvesoftware.Steam
flatpak install flathub com.raggesilver.BlackBox
flatpak install flathub org.libreoffice.LibreOffice
flatpak install flathub com.usebottles.bottles
