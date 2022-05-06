---
title: "Instrukcja tworzenie postów i aktualizacji strony Free Software Poland"
date: 2022-05-06T08:10:45+02:00
draft: false
---

## Instrukcja tworzenie postów i aktualizacji strony [Free Software Poland](https://freesoftwarepoland.codeberg.page)

  Strona jest hostowana w serwisie https://codeberg.org, używa systemu [GIT](https://pl.wikipedia.org/wiki/Git_(oprogramowanie))
Strona musi znajdowac się w repozytorium 'pages', jak to działa wyjaśnione jest [tutaj](https://docs.codeberg.org/codeberg-pages/).

  Aby dodawać treści na stronie w formie postów na blogu lub poprawiać błędy powinieneś.

1. Założyć konto w serwisie codeberg.org https://codeberg.org/user/sing_up

2. Upewnić się, że posiadasz program GIT i zaznajomić sie z jego podstawami, polecam po polsku [dokumentacja git](https://git-scm.com/book/pl/v2)
   Np. możesz ustawić swoją nazwe i mail
   ```
   $ git config --global user.name "John Doe"
   $ git config --global user.email johndoe@example.com
    ```
   
3. Przedstawić się, zbudować zaufanie i dołączyć do grupy [FreeSoftwarePoland](https://codeberg.org/FreeSoftwarePoland), skorzytaj z form kontaktu (lista mailingowa, kanał irc, napisz maila)
   
4. Gdy już jesteś częścią grupy skonfiguruj swoję konto na codeberg, chodzi głównie o dodanie kluczy ssh https://codeberg.org/user/settings/keys

5. Bedąc członkiem grupy możesz sklonować repozytorium 'WWW'. W tym celu utwórz katalog na swoim komputerze i wykonaj polecenie
   ``` 
    $ git clone https://codeberg.org/FreeSoftwarePoland/www.git
    ```
    
    lub jeśli chcesz skorzystać z ssh
    
    ```
    $ git clone git@codeberg.org:FreeSoftwarePoland/www.git
    ```

6. Repozytorium jest generatorem statycznej strony opartej na [Hugo](https://gohugo.io/getting-started/quick-start/)
    
    W katalogu /content/ oraz /conten/post/  znajdują się pliki *.md  z treścią strony i to je powinieneś edytować.
    W katalogu /public/ znajduje się statyczna strona w html, nie edytuj, wygeneruje je Hugo!
    Aby dodawać nowe posty powinieneś zainstalować tą aplikacje.
    Przy pomocy ```$ hugo new /post/nazwa_postu.md``` genereujesz nowy wpis na bloga.
    Następnie edytujesz plik w swoim ulubionym [edytorze](https://www.gnu.org/software/emacs/), używając znaczników markdown.
    Gdy skończysz uruchom ```$ hugo server``` pozwoli to zobaczyc zmiany na zywo pod adres http://localhost:1313
    Jeśli zmiany są ok, przejdź dalej.

7. Aby zaktualizować repozytorium 'WWW' i wypchnąć zmiany do repozytorium 'PAGES' uruchom skrypt ./upload_website.pl (lub alternatywny upload_website.sh)
   Skrypt przeprowadzi wszystkie polecenia GIT, zaktualizuje zmiany w repozytoriach. 

8. Przy kolejnych akutalizacja wykonaj komende ```$ git pull``` w katalogu z repozytorium 'www', zaciągnie to najnowszą wersje.
   Dodaj kolejny post wg. punktu 6.
   
### Jeśli potrzebujesz pomocy pytaj!

