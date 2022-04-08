---
title: "Pinephone"
date: 2022-04-08T14:37:29+02:00
tags: ["pinephone"]
draft: false
---

# Pinephone (repost)

![pinephone](https://external-content.duckduckgo.com/iu/?f=1&nofb=1&u=https%3A%2F%2Fstore.pine64.org%2Fwp-content%2Fuploads%2F2020%2F09%2Ffront1.jpg)

Aktualnie testuje telefon Pinephone wraz z systemem Gnomowym Phosh.

Pierwsza próba i kierunek działań organizacyjnych była instalacja postmarketOS.

Jest to system oparty o Alpine Linux, który zamiast standardowego glibc używa musl oraz busybox.

Problem, na który się napotkałem, jako że próbowałem używać telefonu na co dzień zamiast Androida to zmieniająca się szerokość aplikacji. Krótko mówiąć nie dało się wysyłać smsów.

Restartowanie aplikacji też nie pomagało.

Później zrozumiałem, że niestety, ale postmarketos nie aktualizuje się za często. Jako użytkownik ArchLinux postanowiłem sprawdzić wersje Phosha na Manjaro.

Manjaro używa systemd, glibc 2.32-2, chatty 0.6 (co jest faktycznie najnowszą wersją). Działa stabilnie, póki co.

Aby sflashować system do pamięci telefonu, ponieważ testowałem z początku na karcie microSD. Musiałem dograć z konsoli narzędzie manjaro-arm-flasher, uwaga pierw wymagana była instacja zależności wtyczki qt-wayland. Wtedy pojawi się ikonka w telefonie aplikacji, która pobierze ostatni release i nadpisze pamięć telefonu eMMC. Jako bardzo, szanuje wiki PMOSa można skorzystać z wiki: https://wiki.postmarketos.org/wiki/PINE64_PinePhone_(pine64-pinephone)#Flash_to_microSD_card, aby zrozumieć proces.

Odnośniki:

– https://source.puri.sm/Librem5/chatty

– https://github.com/manjaro-pinephone/phosh

– https://puri.sm/posts/phosh-overview/

– https://postmarketos.org/

– https://wiki.alpinelinux.org/wiki/Main_Page

Tyle na dziś aktualności.

@damaxi