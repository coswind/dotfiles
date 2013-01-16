##Installation:

    git clone https://github.com/coswind/dotfiles.git ~/.dotfiles

##Create symlinks:

    ln -sf ~/.dotfiles/Xresources ~/.Xresources
    ln -sf ~/.dotfiles/compton.conf ~/.compton.conf
    ln -sf ~/.dotfiles/muttrc ~/.muttrc
    ln -sf ~/.dotfiles/xinitrc ~/.xinitrc
    ln -sf ~/.dotfiles/urlview ~/.urlview
    cp -f ~/.dotfiles/offlineimaprc ~/.offlineimaprc
    cp -f ~/.dotfiles/msmtprc ~/.msmtprc

##Note 

    Modify the password part of .msmtprc & .offlineimaprc
    mkdir ~/.mail/gmail
