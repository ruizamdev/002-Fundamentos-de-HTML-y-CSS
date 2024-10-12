#!/bin/bash

#Descargar firefox developer edition

# Descomprimir y enlazar
tar -xvf firefox*.tar.gz
mv firefox /opt/firefox-developer-edition
ln -s /opt/firefox-developer-edition /usr/bin/firefox-developer-edition

# Add a shortcut
sudo nano /usr/share/applications/Firefox\ Developer\ Edition.desktop
and add these lines

[Desktop Entry]
Version=1.0
Name=Firefox Developer Edition
StartupWMClass="firefox-aurora", "Firefox Developer Edition"
GenericName=Web Browser
Exec=/opt/firefox-developer-edition/firefox
Terminal=false
Icon=/opt/firefox-developer-edition/browser/chrome/icons/default/default128.png
Type=Application
Categories=Network;WebBrowser;Favorites;
StartupNotify=true
Keywords=web;browser;internet;
Actions=new-window;new-private-window;
StartupWMClass=Firefox Developer Edition
MimeType=text/html;text/xml;application/xhtml_xml;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;
X-Ayatana-Desktop-Shortcuts=NewWindow;NewIncognito

[Desktop Action NewWindow]
Name=New Window
Exec=/opt/firefox-developer-edition/firefox --new-window %u
OnlyShowIn=Unity;

[Desktop Action NewIncognito]
Name=New Incognito Window
Exec=/opt/firefox-developer-edition/firefox --private-window %u
OnlyShowIn=Unity;
