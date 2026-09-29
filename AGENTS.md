# Instructions pour les agents

## Avant toute modification

1. Lire `conventions/communes.md`.
2. Lire le fichier correspondant au support travaillé :
   - `conventions/poly.md` pour le polycopié ;
   - `conventions/slides.md` pour des transparents ;
   - `conventions/td.md` pour un TD ou un corrigé ;
3. Consulter `template/README.md` et la documentation du template nécessaire aux commandes, environnements et notations employés.
4. Lire `conventions/methode.md` pour une passe de relecture ou de correction.
5. Chercher les consignes propres au document dans `.agents/runs/` avant d'intervenir.

## Règles de rédaction

- Respecter la version épinglée des conventions et du template.
- Respecter la langue, les notations, la typographie et les macros existantes.
- Ne jamais enchaîner des boîtes sans texte qui motive leur apparition et exploite leur contenu.
- Ne pas mélanger une passe de forme et une passe de fond.
- Ne pas modifier le fond mathématique sans validation humaine explicite.
- Réutiliser les commandes et environnements du template plutôt que d'en créer de nouveaux.

## Vérifications

Après chaque salve : suivre
[`conventions/methode.md`, « La vérification suit chaque salve »](conventions/methode.md#la-vérification-suit-chaque-salve).
La procédure est celle de la version épinglée des conventions ; elle n'est
pas recopiée ici.

## Méthode de travail

- Travailler par salves cohérentes et garder les modifications atomiques.
- Relever la baseline des warnings avant la première édition.
- Pour une relecture, produire une proposition de diff avant d'éditer lorsque la validation de l'auteur est requise.
- Documenter dans le suivi de la passe la version des conventions et du template appliquée.
- Utiliser des messages de commit Conventional Commits en français, par exemple `docs(poly): améliore les transitions`.
