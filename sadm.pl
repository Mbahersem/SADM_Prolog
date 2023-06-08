% C'est où démarre le programme
diagnostic :-
    hypothese(Maladie),
    write("Au vu des réponses, on suppose que vous souffrez de "),
    write(Maladie),
    nl,
    suggestion(Maladie),
    nl,
    undo.

% Les différentes hypothèses faites, le programme les testera toutes pour arriver à un résultat (même inconnu)
hypothese(paludisme) :- paludisme, !.
hypothese(inconnu).

% On propose quelques suggestions si on arrive à déterminer de quoi le patient souffre
suggestion(paludisme) :-
    nl,
    write("Comme traitement, via médicament, on propose : "),
    nl,
    write("- Artémisinine et dérivés"),
    nl,
    write("- Avotaquone-proguanil"),
    nl,
    write("- Chloroquine (ou hydroxychloroquine)"),
    nl,
    write("- Quinine et quinidine"),
    nl,
    write("- Cindamycine"),
    nl.

suggestion(inconnu) :-
    nl,
    write("Nous ne connaissons pas cette maladie."),
    nl.

% Ici, on vérifiera notre hypothèse, s'il souffre d'une maladie donnée
paludisme :-
    verifie(fievre),
    verifie(diarhee),
    verifie(maux_de_tete),
    verifie(sueurs_ou_frissons),
    verifie(nausees_et_vomissements),
    verifie(douleurs_musculaires).

% Ce prédicat va nous permettre de poser une question à l'utilisateur et d'effectuer un traitement selon sa réponse (oui ou non)
demande(Question) :-
    write("Avez-vous ce symptôme : "),
    write(Question),
    write(" ? (o/n) "),
    read(Reponse),
    nl,
    ((Reponse == o)
    ->
    asserta(yes(Question));
    asserta(no(Question)), fail).

% Ici, on précise que yes/1 et no/1 sont des prédicats dynamiques, qu'ils peuvent être ajoutés ou retirés lors de l'exécution
:- dynamic yes/1, no/1.

/* On vérifie si le patient souffre d'un symptôme donné en posant une question. 
On définira le prédicat correspondant à la réponse auquel une valeur est attribuée */
verifie(Symptome) :-
    (yes(Symptome)
    ->
    true;
    (no(Symptome)
    ->
    fail;
    demande(S))).

% On retire toutes les réponses aux précédents symptômes pour recommencer avec une autre hypothèse.
undo :- retract(yes(_)), fail.
undo :- retract(no(_)), fail.
undo.