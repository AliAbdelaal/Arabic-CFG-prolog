# Arabic Sentence Parser Using Prolog

This is a simple parser using prolog, it checks for the input phrase, if it is a noun-phrase then it's accepted, else it will reject it

## output example

```prolog
?- check("الرجل ياكل الفاكهة").
true .

?- check("ياكل الرجل الفاكهة").
false.
```

## How to use it

### Installation

first you need to install prolog from [here](http://www.swi-prolog.org/download/stable), then you can launch the prolog via terminal using command ```prolog``` or ```gprolog``` depending on your machine and installation, a good tutorial on how to get started is the 10 minutes of [this video](https://www.youtube.com/watch?v=SykxWpFwMGs&t=557s).

### Usage

to use the code, launch the porlog in your terminal

```prolog
prolog
```

then to load the file use the following

```prolog
?- [cfg].
true.
```

> note here that the ```true.``` is the response, which indicates that the program was loaded successfully.

to run a check command use the check function and pass the input to it like the following.

```prolog
?- check("ياكل الرجل الفاكهة").
false.
```

> i would recommened using [Konsole](https://konsole.kde.org/) as it print the arabic letters with ease.