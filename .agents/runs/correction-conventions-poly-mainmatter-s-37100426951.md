# Suivi — Correction conventions poly/mainmatter/suites.tex

| Champ | Valeur |
|-------|--------|
| Rôle | `conventions-fixer` |
| Issue | #19 |
| Branche | `agent/correction-conventions-poly-mainmatter-s-37100426951` |
| Modèle | `deepseek-v4-flash` |
| Run | https://github.com/ocourses/ocots-demo/actions/runs/37100426951 |
| Démarré | 2026-10-03T05:39:10Z |

## Tâche

Corrige les points CONFIRMÉS de l'issue conventions-style #19 (fichier poly/mainmatter/suites.tex) en suivant le rôle conventions-fixer : relis l'issue (verdicts déjà rendus par conventions-reviewer, pas la sortie brute du détecteur ; lignes retrouvées par l'empreinte de son bloc JSON), applique le remède documenté par ocots-conventions pour chaque règle citée, uniquement sur les points confirmés — rien d'autre dans le fichier. Un remède qui demande un choix d'auteur (ex. C2 entre deux formes réellement équivalentes) : ne tranche pas, laisse la ligne en l'état et signale-le dans le bilan.

---

**Contenu de l'issue liée #19 :**

**Constat vérifié lors de la relecture humaine** — tri du candidat conventions par `conventions-reviewer`.

Les **8 labels** signalés sont tous confirmés : aucun n'est cité dans le cours (`grep` sur tout `*.tex` pour `\ref{…}`/`\cref{…}`/`\autoref{…}`). Dans `suites.tex`, seuls `def:convergence`, `prop:bornee` et `thm:monotone` sont effectivement référencés (`suites.tex:45,66,125`). Les autres sont posés « au cas où », contrairement à `communes.md#c5` (« Ne poser un label que si l'objet est cité »).

Chaque point confirmé, avec sa règle et sa ligne actuelle :

| Règle | Ligne (actuelle) | Justification |
|---|---|---|
| C5 | 2 | `label{chap:suites}` jamais cité — à retirer |
| C5 | 9 | `label{sec:convergence}` jamais cité — à retirer |
| C5 | 25 | `label{thm:unicite}` jamais cité — à retirer |
| C5 | 54 | `label{sec:operations}` jamais cité — à retirer |
| C5 | 58 | `label{thm:operations}` jamais cité — à retirer |
| C5 | 73 | `label{prop:inverse}` jamais cité — à retirer |
| C5 | 99 | `label{sec:monotones}` jamais cité — à retirer |
| C5 | 104 | `label{def:croissante}` jamais cité — à retirer |

---
_Détecté par `ocots-lint synchroniser`._
<!-- ocots-lint {"schema": 1, "fichier": "poly/mainmatter/suites.tex", "trouvailles": [{"empreinte": "c6a7575667ee0890:0", "regle": "C5", "ligne": 2, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "d0d0b5089d1706d9:0", "regle": "C5", "ligne": 9, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "330b74b8e06b009f:0", "regle": "C5", "ligne": 25, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "1a57b5bb4eceae72:0", "regle": "C5", "ligne": 54, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "3a34c62ed83f04b4:0", "regle": "C5", "ligne": 58, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "bc21edab6785e934:0", "regle": "C5", "ligne": 73, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "5e39baff846e914a:0", "regle": "C5", "ligne": 99, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "78d1c682a5ae32cf:0", "regle": "C5", "ligne": 104, "garantie": "heuristique", "voie": "tri"}]} -->

## Plan

- [x] Compiler `suites.tex` en l'état (référence, étape 0)
- [x] Retirer `label{chap:suites}` (l.2, C5)
- [x] Retirer `label{sec:convergence}` (l.9, C5)
- [x] Retirer `label{thm:unicite}` (l.25, C5)
- [x] Retirer `label{sec:operations}` (l.54, C5)
- [x] Retirer `label{thm:operations}` (l.58, C5)
- [x] Retirer `label{prop:inverse}` (l.73, C5)
- [x] Retirer `label{sec:monotones}` (l.99, C5)
- [x] Retirer `label{def:croissante}` (l.104, C5)
- [x] Vérifier `git diff` (seuls les 8 labels retirés) + verifier C5 sur `suites.tex`
- [x] Recompiler en fin de run, restaurer tout PDF suivi, rédiger le bilan

## Journal

- 2026-10-03T05:39:10Z — chantier initialisé (issue #19, branche, PR Draft)
- 2026-10-03 — étape 0 : `latex-compile suites.tex` échoue (« Undefined control sequence \chapter », fichier fragment non pilote, comportement attendu hors chaîne)
- 2026-10-03 — les 8 labels confirmés retirés ; `ocots-lint verifier C5` repasse à 0 infraction(s)
- 2026-10-03 — pilote `poly/main.tex` compilé en fin de run : OK ; `git status` propre

## Bilan

Issue #19, fichier `poly/mainmatter/suites.tex` — 8 points C5 confirmés, tous corrigés.

Règle `ocots-conventions` C5 (`communes.md`, « Ne poser un label que si
l'objet est cité ») : les 8 labels jamais référencés dans le cours ont été
retirés. Retrouvés par empreinte via `ocots-lint verifier --format json`
(lignes 2, 9, 25, 54, 58, 73, 99, 104), cohérentes avec le bloc JSON de
l'issue.

| Règle | Label retiré | Emplacement |
|---|---|---|
| C5 | `label{chap:suites}` | l.2 (chapitre) |
| C5 | `label{sec:convergence}` | l.9 (section) |
| C5 | `label{thm:unicite}` | l.25 (option `label=` du theorem) |
| C5 | `label{sec:operations}` | l.54 (section) |
| C5 | `label{thm:operations}` | l.58 (option `label=` du theorem) |
| C5 | `label{prop:inverse}` | l.73 (option `label=` de la proposition) |
| C5 | `label{sec:monotones}` | l.99 (section) |
| C5 | `label{def:croissante}` | l.104 (option `label=` de la définition) |

Aucun point laissé de côté ni devenu plus applicable. Les labels
`def:convergence`, `prop:bornee`, `thm:monotone` restent cités dans le
fichier et ne figuraient pas dans l'issue : non touchés.

**Compilation** : `latex-compile suites.tex` seul échoue avant ce travail
(« Undefined control sequence », `l.1 \chapter`) — fichier fragment
non pilotable isolément, raison étrangère à l'issue. Vérification de
substitution : le pilote `poly/main.tex` compile **OK** après les retraits
(les labels supprimés n'étaient référencés nulle part), donc le diff
n'aggrave rien. `ocots-lint verifier C5` sur `suites.tex` : **0 infraction**.
`git status` propre (aucun PDF suivi modifié par la compilation).

**Restes à vérifier à la main** : rien de particulier ; la relecture humaine
de la PR confirmant le rendu du pilote.

- 2026-10-03T05:41:02Z — run terminé (https://github.com/ocourses/ocots-demo/actions/runs/37100426951)
