# Beskrivelse

Dette er hjemmeeksamensoppgave i faget "SMC 10301 Fintech, muliggjørende teknologier og endring". Oppgaven gjennomføres med følgende verktøy:

* Typst: https://typst.app/docs
* VSCode: https://code.visualstudio.com/


# Typst

Typst kan installeres som en CLI vha Brew.

```bash
brew install typst --appdir=~/Applications
```

## Typst template

Her brukes versatile-apa som hoved template.

Den krever i tillegg:

* cascadia-code font: https://github.com/microsoft/cascadia-code

## Lage en PDF

```bash
typst watch oppgave/main.typ
```

Dette gjør også at den følger med på eventuelle kompileringsfeil mens man redigerer. 