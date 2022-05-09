---
title: "Instrukcja tworzenie postów i aktualizacji strony Free Software Poland"
date: 2022-05-09T22:30:45+02:00
draft: false
---

  Strona jest hostowana w serwisie https://codeberg.org, używa systemu [GIT](https://pl.wikipedia.org/wiki/Git_(oprogramowanie))
Strona musi znajdować się w repozytorium 'pages', jak to działa wyjaśnione jest [tutaj](https://docs.codeberg.org/codeberg-pages/).

  Aby dodawać treści na stronie w formie postów na blogu lub poprawiać błędy powinieneś.

1. Założyć konto w serwisie codeberg.org https://codeberg.org/user/sing_up

2. Upewnić się, że posiadasz program GIT i zaznajomić sie z jego podstawami, polecam po polsku [dokumentacja git](https://git-scm.com/book/pl/v2)
   Np. możesz ustawić swoją nazwę i mail
   ```
   $ git config --global user.name "John Doe"
   $ git config --global user.email johndoe@example.com
    ```
   
3. Przedstawić się, zbudować zaufanie i dołączyć do grupy [FreeSoftwarePoland](https://codeberg.org/FreeSoftwarePoland), skorzystaj z form kontaktu (lista mailingowa, kanał irc, napisz maila)
   
4. Gdy już jesteś częścią grupy skonfiguruj swoje konto na codeberg, chodzi głównie o dodanie kluczy ssh https://codeberg.org/user/settings/keys

5. Bodąc członkiem grupy możesz sklonować repozytorium 'WWW'. W tym celu utwórz katalog na swoim komputerze i wykonaj polecenie
   ``` 
    $ git clone https://codeberg.org/FreeSoftwarePoland/www.git
    ```
    
    lub jeśli chcesz skorzystać z ssh
    
    ```
    $ git clone git@codeberg.org:FreeSoftwarePoland/www.git
    ```

6. W repozytorium znajdują się submoduły, trzeba je zainicjować i ściągnąć:
    ```
    $ git submodule init
    Zarejestrowano pod-moduł „public” (https://codeberg.org/FreeSoftwarePoland/pages.git) w „public”
    Zarejestrowano pod-moduł „themes/minimal” (https://github.com/calintat/minimal.git) w „themes/minimal”

    $ git submodule update 
    Klonowanie do „/home/pj/fsfpl/www/public”...
    Klonowanie do „/home/pj/fsfpl/www/themes/minimal”...
    Ścieżka podmodułu „public”: wybrano „18500690517865edb22b1af9101afbdad2241567”
    Ścieżka podmodułu „themes/minimal”: wybrano „987f270dfee350c561a4c588724c8eae290aeaa8”

    $ git submodule update --remote themes/minimal	
    ```

7. Repozytorium jest generatorem statycznej strony opartej na [Hugo](https://gohugo.io/getting-started/quick-start/)
    
    W katalogu /content/ oraz /conten/post/  znajdują się pliki *.md  z treścią strony i to je powinieneś edytować.
    W katalogu /public/ znajduje się statyczna strona w html, nie edytuj, wygeneruje je Hugo!
    Aby dodawać nowe posty powinieneś zainstalować tą aplikację.
    Następnie edytujesz plik w swoim ulubionym [edytorze](https://www.gnu.org/software/emacs/), używając znaczników markdown bądź [org](https://orgmode.org/)
    Gdy będziesz w głównym katalogu www, przy pomocy ```$ hugo new``` wygenerujesz nowy wpis na bloga. Edytuj plik /conten/post/tytul_postu.md
    W razie zobaczenia pustej strony, patrz punkt 6.
    Gdy skończysz uruchom ```$ hugo server``` pozwoli to zobaczyć zmiany na żywo pod adresem http://localhost:1313
    Jeśli zmiany są ok, przejdź dalej.

8. Aby zaktualizować repozytorium 'WWW' i wypchnąć zmiany do repozytorium 'PAGES' uruchom skrypt ./upload_website.pl (lub alternatywny upload_website.sh)
   Skrypt przeprowadzi wszystkie polecenia GIT, zaktualizuje zmiany w repozytoriach.

9. Przy kolejnych aktualizacjach, wykonaj komendę ```$ git pull``` w katalogu z repozytorium 'www', zaciągnie to najnowszą wersje.
   Dodaj kolejny post wg. punktu 6.
   
### Jeśli potrzebujesz pomocy pytaj!



*Aktualizacja xmszkn i kompowiec 09.05.2022*

