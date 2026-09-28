# Suivi — Correction conventions poly/mainmatter/suites.tex

| Champ | Valeur |
|-------|--------|
| Rôle | `conventions-fixer` |
| Issue | #1 |
| Branche | `agent/correction-conventions-poly-mainmatter-s-36478096807` |
| Modèle | `deepseek-v4-flash` |
| Run | https://github.com/ocourses/ocots-demo/actions/runs/36478096807 |
| Démarré | 2026-09-28T20:19:32Z |

## Tâche

Corrige les points CONFIRMÉS de l'issue conventions-style #1 (fichier poly/mainmatter/suites.tex) en suivant le rôle conventions-fixer : relis l'issue (verdicts déjà rendus par conventions-reviewer, pas la sortie brute du détecteur ; lignes retrouvées par l'empreinte de son bloc JSON), applique le remède documenté par ocots-conventions pour chaque règle citée, uniquement sur les points confirmés — rien d'autre dans le fichier. Un remède qui demande un choix d'auteur (ex. C2 entre deux formes réellement équivalentes) : ne tranche pas, laisse la ligne en l'état et signale-le dans le bilan.

---

**Contenu de l'issue liée #1 :**

**Constats confirmés** (relecture `conventions-reviewer` sur `poly/mainmatter/suites.tex`, suite du tri #1).

Deux trouvailles ont été rejetées lors du tri et sont désormais exemptées dans la source (`P3` ligne ~70, `P5` ligne ~79) ; elles ne figurent plus ci-dessous. Sept points sont confirmés :

1. **P2, ligne 20** — La `definition` (suite convergente) est suivie sans texte du `theorem` (unicité de la limite) : deux boîtes collées, aucune phrase de liaison entre `\end{definition}` et `\begin{theorem}`.

2. **C6, ligne 32** — La preuve de l'unicité de la limite se termine par une équation hors texte sans `\qedhere` : le symbole de fin passera seul sur sa ligne.

3. **P3, ligne 54** — Amorce passe-partout, phrase entière : « Nous avons le théorème suivant. » sans information au-delà de l'annonce.

4. **P2, ligne 103** — La `definition` (suite croissante) est suivie sans texte du `theorem` (limite monotone) : deux boîtes collées, aucune phrase de liaison entre `\end{definition}` et `\begin{theorem}`.

5. **C6, ligne 116** — La preuve de la limite monotone se termine par une équation hors texte sans `\qedhere` : le symbole de fin passera seul sur sa ligne.

6. **C4, ligne 118** — Renvoi en bas de casse : « le théorème~\ref{thm:monotone} » doit être capitalisé (« le Théorème~\ref{thm:monotone} »).

7. **C4, ligne 120** — Mot composé sans trait d'union : « sous suite » doit s'écrire « sous-suite ».

---
_Détecté par `ocots-lint synchroniser`._
<!-- ocots-lint {"schema": 1, "fichier": "poly/mainmatter/suites.tex", "trouvailles": [{"empreinte": "10ef2dcadd68d77e:0", "regle": "P2", "ligne": 20, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "f027f912f1f4d4e5:0", "regle": "C6", "ligne": 32, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "d7e52e14e70008c7:0", "regle": "P3", "ligne": 54, "garantie": "signal", "voie": "tri"}, {"empreinte": "d142b49730ffc128:0", "regle": "P2", "ligne": 101, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "2e0bc43b258e2f0f:0", "regle": "C6", "ligne": 114, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "0d27bb71f96b892c:0", "regle": "C4", "ligne": 116, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "c578ace4ff1e338c:0", "regle": "C4", "ligne": 118, "garantie": "heuristique", "voie": "tri"}]} -->

## Plan

_À rédiger par l'agent : liste d'étapes cochables._

## Journal

- 2026-09-28T20:19:32Z — chantier initialisé (issue #1, branche, PR Draft)

## Bilan

_À rédiger par l'agent en fin de run._
