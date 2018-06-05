% transfer the string text into splited text words
tokenize(String, List) :-
    atomic_list_concat(List, ' ', String).
    

% check the input sentence if it is a nounphrase or not
% it first split the text, then pass it to the actual checking function
check(X) :-
    tokenize(X, List),
    sentence(List, []).

% check for the beginner and then it's complement, it can't have only a beginner
sentence(Start, End) :-
    %check for the beginner
    nounphrase(Start, Rest),
    %check for the complement
    comlplement(Rest, End).

% the complement could be a verb-phrase
comlplement(Start, End) :-
    verbphrase(Start, End).

% the complement could be a semi-phrase
comlplement(Start, End) :-
    semiphrase(Start, End).

% the complement could be a noun-phrase
complement(Start, End) :-
    nounphrase(Start, End).

% this one check for a noun phrase, which is the beginner and also could be the complement
% this one check for a direct noun
nounphrase([Noun|End], End) :-
    noun(Noun).

% this one check for a noun phrase, which is the beginner and also could be the complement
% this one check for a noun with a pronoum
nounphrase([Pronoun, Noun|End], End) :-
    pronoun(Pronoun),
    noun(Noun).

% checks if the phrase is a verb, this one checks for a verb only
verbphrase([Verb|End], End) :-
    verb(Verb).

% checks if the phrase is a verb, this one checks for a verb followed by a noun-phrase
verbphrase([Verb|Rest], End) :-
    verb(Verb),
    nounphrase(Rest, End).

% checks if the phrase is a verb, this one checks for a verb followed by a semi-phrase
verbphrase([Verb|Rest], End):-
    verb(Verb),
    semiphrase(Rest, End).

% checks if the phrase is a semi-phrase, a semi-phrase must take a Preposition then a noun-phrase
semiphrase([Preposition|Rest], End) :-
    preposition(Preposition),
    nounphrase(Rest, End).

% Now we gonna define the possible options for the program

/* ==================================================================================== */
/*								Pronouns	  							      	*/
/* ==================================================================================== */
pronoun(هذا).
pronoun(هذه).
pronoun(هذان).
pronoun(هاتان).
pronoun(هؤلاء).
pronoun(هم).
pronoun(هن).
pronoun(هو).
pronoun(هي).
pronoun(الذي).
pronoun(التي).
pronoun(اللذان).
pronoun(الذين).
pronoun(اللتان).

/* ==================================================================================== */
/*								Nouns	  							      	*/
/* ==================================================================================== */
noun(الرجل).
noun(الكلب).
noun(رجل).
noun(كلب).
noun(قطة).
noun(القطة).
noun(البنت).
noun(بنت).
noun(ولد).
noun(الولد).
noun(السيدة).
noun(سيدة).
noun(اخ).
noun(الاخ).
noun(اخت).
noun(الاخت).
noun(اب).
noun(الاب).
noun(ام).
noun(الام).
noun(الفاكهة).
noun(الخضروات).
noun(اللبن).
noun(الماء).
noun(الشجرة).
noun(الكرسي).
noun(القطار).
noun(المترو).

/* ==================================================================================== */
/*								Verbs	  							      	*/
/* ==================================================================================== */
verb(يحب).
verb(يكره).
verb(تحب).
verb(تكره).
verb(ياكل).
verb(تاكل).
verb(يشرب).
verb(تشرب).
verb(تجلس).
verb(يجلس).
verb(يركب).
verb(تركب).

/* ==================================================================================== */
/*								Preposition	  							      	*/
/* ==================================================================================== */
preposition(في).
preposition(على).
preposition(فوق).
preposition(تحت).
preposition(اسفل).
preposition(أمام).
preposition(وراء).
preposition(حيث).
preposition(من).
preposition(جنب).
preposition(اعلى).
preposition(قبل).
preposition(بعد).
preposition(دون).
preposition(حين).
preposition(صباح).
preposition(ظهر).
preposition(ساعة).
preposition(سنة).
preposition(أمس).
