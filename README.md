# SADM_Prolog

## Objectif
Dépôt du système d'aide à la décision médicale. Projet donné dans le cadre du cours d'IA et systèmes formels.

## Mode d'utilisation

### Ouverture
On doit consulter le programme dans un interpréteur **SWI-Prolog** en faisant :
- `consult('sadm.pl').` puis en appuyant sur la touche `Entrée`.
- en ouvrant grâce au menu de l'interpréteur puis cliquer sur **File -> Consult...** pour choisir l'emplacement du fichier comme ci-dessous.

![Ouverture via menu] (file.png)

### Lancement
Une fois le fichier chargé, on entre dans l'interpréteur la commande `diagnostic.` qui est le prédicat principal, puis on confirme avec la touche `Entrée`.

### Mode de fonctionnement
Il nous sera posé une série de questions dont on devra répondre par `o.` pour **oui** et `n.` pour **non**. A la fin, s'il y a correspondance, le programme nous affichera la maladie dont on souffre suivi de quelques suggestions; sinon, on souffre d'un mal **inconnu** au système.
A chaque que l'on voudra utiliser le système, après avoir eu un diagnostic, on devra répéter l'étape du **Lancement**.