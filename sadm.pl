% C'est où démarre le programme
diagnostic :-
    hypothese(Maladie),
    nl,
    write("Au vu des reponses, on suppose que vous souffrez de "),
    write(Maladie),
    nl,
    suggestion(Maladie),
    nl,
    undo.

% Les différentes hypothèses faites, le programme les testera toutes pour arriver à un résultat (même inconnu)
hypothese(paludisme) :- paludisme, !.
hypothese(cholera) :- cholera, !. 
hypothese(diphterie) :- diphterie, !.
hypothese(grippe) :- grippe, !.
hypothese(rougeole) :- rougeole, !.
hypothese(oreillons) :- oreillons, !.
hypothese(polio) :- polio, !.
hypothese(rubeole) :- rubeole, !.
hypothese(tetanos) :- tetanos, !.
hypothese(tuberculose) :- tuberculose, !.
hypothese(typhoide) :- typhoide, !.
hypothese(fievre_jaune) :- fievre_jaune, !.
hypothese(varicelle) :- varicelle, !. 
hypothese(kwashiokor) :- kwashiokor, !. 
hypothese(arthrose) :- arthrose, !. 
hypothese(meningite) :- meningite, !.
hypothese(dysenterie_bacillaire) :- dysenterie_bacillaire, !.
hypothese(urticaire) :- urticaire, !.
hypothese(inconnu).

% On propose quelques suggestions si on arrive à déterminer de quoi le patient souffre
suggestion(paludisme) :-
    nl,
    write("Comme traitement, via medicament, on propose : "),
    nl,
    write("- Artemisinine et derives"),
    nl,
    write("- Avotaquone-proguanil"),
    nl,
    write("- Chloroquine (ou hydroxychloroquine)"),
    nl,
    write("- Quinine et quinidine"),
    nl,
    write("- Cindamycine"),
    nl.

suggestion(cholera) :-
    nl,
    write("Comme traitement on propose : "),
    nl,
    write("- la rehydratation par solute de rehydratation orale"),
    nl,
    write("- Si possible par voie veineuse, sous surveillance medicale"),
    nl.

suggestion(diphterie) :-
    nl,
    write("Comme traitement on propose : "),
    nl,
    write("- Une antibiothérapie par amoxicilline "),
    nl.

suggestion(grippe) :-
    nl,
    write("Comme traitement on propose : "),
    nl,
    write("- le traitement des symptome tels que la fievre en prenant du paracetamol ou ibuprofene "),
    nl.

suggestion(rougeole) :-
    nl,
    write("Comme traitement on propose : "),
    nl,
    write("- le traitement des symptome tels que la fievre en prenant du paracetamol ou ibuprofene "),
    nl.

suggestion(oreillons) :-
    nl,
    write("Comme traitement on propose : "),
    nl,
    write("- le traitement des symptome tels que la fievre et la douleur en prenant du paracetamol"),
    nl,
    write("- aspirine et ibuprofène sont à éviter."),
    nl.

suggestion(polio) :-
    nl,
    write("Comme traitement on propose : "),
    nl,
    write("- le traitement des symptome tels que la fievre et la douleur avec du repos"),
    nl,
    write("- la prise des antalgiques et des antipyrétiques "),
    nl.

suggestion(rubeole) :-
    nl,
    write("Comme traitement on propose : "),
    nl,
    write("- le traitement des symptome tels que la fievre et la douleur si elles sont presentes"),
    nl.

suggestion(tetanos) :-
    nl,
    write("Comme traitement on propose : "),
    nl,
    write("- soins au niveau de la plaie pour la nettoyer et limiter le developpement de la bacterie à ce niveau"),
    nl,
    write("- prise en charge medicamenteuse des symptome, en particulier des contractures musculaires, des spasmes et de la douleur"),
    nl.

suggestion(tuberculose) :-
    nl,
    write("Comme traitement on propose : "),
    nl,
    write("- prendre tous les jours pendant 3 a 6 mois minimum, plusieurs antibiotiques en même temps parmi les suivants : isoniazide, rifampicine, pyrazinamide et ethambutol"),
    nl,
    write("- il est important de bien respecter ce traitement"),
    nl.

suggestion(typhoide) :-
    nl,
    write("Comme traitement on propose : "),
    nl,
    write("- le traitement des symptome tels que la fievre et la douleur si elles sont presentes et la prise des antibiotiques"),
    nl.

suggestion(fievre_jaune) :-
    nl,
    write("Comme traitement on propose : "),
    nl,
    write("- le repos, la rehydratation et administration de medicaments visant a limiter la fievre, les vomissements et la douleur"),
    nl.

suggestion(varicelle) :-
    nl,
    write("Comme traitement, on propose : "),
    nl,
    write("- Des antihistaminiques en cas de grattage du fait des démangeaisons cutanées"),
    nl,
    write("- Application de solution antiseptique"),
    nl,
    write("- Administrer au plus vite un serum antidiphterique en injection intramusculaire et/ou des antibiotiques"),
    nl.

suggestion(kwashiokor) :-
    nl,
    write("Comme traitement on propose : "),
    nl,
    write("- alimentation reequilibree et adaptee et riche en produits laitiers"),
    nl,
    write("- administration des antibiotiques"),
    nl.

suggestion(arthrose) :-
    nl,
    write("Comme traitement on propose : "),
    nl,
    write("- prise de codeine et de cortisone"),
    nl,
    write("- faire des injections hyaluroniques et de la physiotherapie"),
    nl.

suggestion(meningite) :-
    nl,
    write("Comme traitement on propose : "),
    nl,
    write("- administration des antibiotiques"),
    nl.

suggestion(dysenterie_bacillaire) :-
    nl,
    write("Comme traitement on propose : "),
    nl,
    write("- boire davantage de liquides, utiliser des solutions de rehydratation,et etre rehydrate par perfusion intraveineuse"),
    nl,
    write("- administration des antibiotiques"),
    nl.

suggestion(urticaire) :-
    nl,
    write("Comme traitement on propose : "),
    nl,
    write("- prise des antihistaminiques,des antiinflamatoires"),
    nl,
    write("- refroidir la zone lesee avec une compresse froide pour calmer les demengeaisons"),
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

cholera :-
    verifie(diarhee),
    verifie(fatigue_et_faiblesse),
    verifie(nausees_et_vomissements),
    verifie(deshydratation).

diphterie :-
    verifie(gonflement_des_ganglions_du_coup),
    verifie(gorge_recouverte_par_une_membrane_epaisse_grise),
    verifie(malaise),
    verifie(difficulte_a_avaler),
    verifie(fievre),
    verifie(mal_de_gorge).

grippe :-
    verifie(fievre),
    verifie(malaise),
    verifie(maux_de_tete),
    verifie(nez_qui_coule),
    verifie(frissons),
    verifie(toux),
    verifie(douleurs_musculaires_ou_corporelles),
    verifie(mal_de_gorge).

rougeole :-
    verifie(fievre_eleve),
    verifie(toux_seche),
    verifie(nez_qui_coule),
    verifie(yeux_rouges_et_larmoyants),
    verifie(faiblesse_generale),
    verifie(taches_blanches_dans_la_bouche_et_la_gorge).

oreillons :-
    verifie(fievre),
    verifie(enflure_des_glandes_salivaires),
    verifie(douleurs_aux_oreilles_ou_machoire).

polio :-
    verifie(fievre),
    verifie(nausees_et_vomissements),
    verifie(malaise_generalise),
    verifie(problemes_respiratoires).

rubeole :-
    verifie(fievre_modere),
    verifie(gonflement_des_ganglions_de_la_nuque),
    verifie(boutons_sur_visage_cou_ou_tout_le_corps).

tetanos :-
    verifie(spasmes_et_contracture_musculaires_aux_muscles_de_machoire),
    verifie(spasmes_et_contracture_musculaires_aux_muscles_du_coup_et_dos),
    verifie(difficulte_a_avaler),
    verifie(difficulte_a_manger),
    verifie(transpiration_excessive).

tuberculose :-
    verifie(fatigue_et_faiblesse),
    verifie(amaigrissement),
    verifie(fievre_eleve),
    verifie(douleurs_articulaires),
    verifie(sueurs_nocturnes),
    verifie(toux_peristante),
    verifie(essoufflement).

typhoide :-
    verifie(fievre),
    verifie(toux),
    verifie(diarhee),
    verifie(fatigue),
    verifie(maux_de_tete),
    verifie(perte_appetit),
    verifie(constipation).

fievre_jaune :-
    verifie(fievre),
    verifie(frissons),
    verifie(douleurs_musculaires),
    verifie(maux_de_tete),
    verifie(nausees_et_vomissements).

varicelle :-
    verifie(fievre_modere),
    verifie(rougeurs_sur_la_peau_sur_lesquelles_vesicules_molles),
    verifie(fortes_demangeaisons_cutanees).

kwashiokor :-
    verifie(fatigue),
    verifie(irritabilite),
    verifie(anorexie),
    verifie(anemie),
    verifie(apathie),
    verifie(lethargie),
    verifie(fonte_des_muscles).

arthrose :-
    verifie(douleur_sourde_profonde),
    verifie(raideur_articulaire),
    verifie(enflure_articulation),
    verifie(augmentation_volume_articulation_phalange_intermediaire),
    verifie(augmentation_volume_articulation_phalangette),
    verifie(augmentation_volume_articulation_base_du_pouce),
    verifie(sensation_ou_bruit_broiement_articulation),
    verifie(perte_flexibilite_articulaire),
    verifie(douleur_dos_et_cou),
    verifie(raideur_dos_et_cou).

meningite :-
    verifie(fievre),
    verifie(frissons),
    verifie(faiblesse_generale),
    verifie(paralysie),
    verifie(trouble_de_la_conscience),
    verifie(maux_de_tete),
    verifie(crises_epilepsie).

dysenterie_bacillaire :-
    verifie(maux_de_ventre),
    verifie(nausees_et_vomissements),
    verifie(fievre),
    verifie(fatigue),
    verifie(selles_sanglangtes).

urticaire :-
    verifie(peau_epaissie),
    verifie(gonflement_peau),
    verifie(papules_surelevees_irritantes),
    verifie(inflamation_peau).


% Ce prédicat va nous permettre de poser une question à l'utilisateur et d'effectuer un traitement selon sa réponse (oui ou non)
demande(Question) :-
    write("Avez-vous ce symptome : "),
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
    true ;
    (no(Symptome)
    ->
    fail ;
    demande(Symptome))).

% On retire toutes les réponses aux précédents symptome pour recommencer avec une autre hypothèse.
undo :- retract(yes(_)), fail.
undo :- retract(no(_)), fail.
undo.