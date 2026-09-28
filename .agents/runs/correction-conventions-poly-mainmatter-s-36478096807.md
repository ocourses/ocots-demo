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

- [x] Étape 0 — `latex-compile` de référence (driver `poly/main.tex`, `suites.tex` étant un fragment `\input`)
- [x] P2 ligne 20 — liaison entre `\end{definition}` (suite convergente) et `\begin{theorem}` (unicité)
- [x] C6 ligne 32 — `\qedhere` dans l'équation finale de la preuve d'unicité
- [x] P3 ligne 54 — amorce « Nous avons le théorème suivant. » → phrase motivée
- [x] P2 ligne 103 — liaison entre `\end{definition}` (suite croissante) et `\begin{theorem}` (limite monotone)
- [x] C6 ligne 114/116 — `\qedhere` dans l'équation finale de la preuve de limite monotone
- [x] C4 ligne 116 — « le théorème~\ref{thm:monotone} » → « le Théorème~\ref{thm:monotone} »
- [x] C4 ligne 118 — « sous suite » → « sous-suite »
- [x] Vérification finale — `git diff`, `latex-compile`, `git status`, restitution PDF éventuel

## Journal

- 2026-09-28T20:19:32Z — chantier initialisé (issue #1, branche, PR Draft)
- 2026-09-28 — étape 0 : `suites.tex` non compilable isolément (fragment `\input`, `\chapter` inconnu) ; le driver `poly/main.tex` compile OK. Référence de substitution validée.
- 2026-09-28 — les 7 empreintes confirmées correspondent au fichier actuel ; correction en cours.
- 2026-09-28 — 7 points corrigés ; les 7 empreintes ont disparu de `verifier` ; driver `poly/main.tex` compile encore OK.

## Bilan

**Points corrigés (7/7).** Le fragment `poly/mainmatter/suites.tex` n'est pas
compilable isolément (c'est un `\input` du pilote `poly/main.tex` où `\chapter`
est défini) ; la vérification de compilation a donc porté sur le pilote, qui
compile OK avant et après, et a servi de référence de substitution conforme à
la méthode.

1. **P2 ligne 20** — ajouté une phrase de liaison entre la `definition`
   (suite convergente) et le `theorem` (unicité de la limite) : « Cette limite,
   quand elle existe, ne laisse aucune place à l'ambiguïté : une suite ne
   s'approche que d'un seul réel. »
2. **C6 ligne 32** — ajouté `\qedhere` dans l'équation finale de la preuve
   d'unicité.
3. **P3 ligne 54** — remplacé l'amorce passe-partout « Nous avons le théorème
   suivant. » par une phrase motivée qui dit *à quoi sert* le résultat (les
   opérations usuelles passent aux limites).
4. **P2 ligne 103** — ajouté une phrase de liaison entre la `definition`
   (suite croissante) et le `theorem` (limite monotone).
5. **C6 ligne 114/116** — ajouté `\qedhere` dans l'équation finale de la preuve
   de la limite monotone.
6. **C4 ligne 116** — « le théorème~\ref{thm:monotone} » → « le
   Théorème~\ref{thm:monotone} » (renvoi capitalisé, règle renvois de C4).
7. **C4 ligne 118** — « sous suite » → « sous-suite » (mot composé).

**Points non traités (hors périmètre).** Le `verifier` signale encore quatre
trouvailles qui ne figurent pas dans l'issue confirmée et restent donc
intactes : `C4` `~:` (ligne 50), `C4` guillemets `` `` `` (ligne 51), `P3`
« phrase qui se jette dans la boîte » (ligne 73), `P5` « 4 remarques
d'affilée » (ligne 81). Elles ont été tranchées hors de cette issue ; je ne les
ai pas touchées. Les `P3`/`P5` rejetées au tri et « exemptées dans la source »
ne correspondaient pas aux lignes que je vois (lignes ~70/~79 selon l'issue,
73/81 dans le fichier actuel) ; aucun point confirmé n'en dépend.

**Aucun point laissé en l'état ni devenu plus applicable** : les 7 points
confirmés correspondaient tous au texte actuel et ont été corrigés.

**Vérifications.** Les 7 empreintes du bloc `ocots-lint` ont disparu de
`verifier --format json` ; le diff ne touche que les lignes liées aux points ;
`latex-compile poly/main.tex` compile (OK). Aucun fichier suivi modifié hors
du `.tex` corrigé (`git status` propre après compilation — pas de PDF rendu
committé touché).

## Bilan

_À rédiger par l'agent en fin de run._

- 2026-09-28T20:22:08Z — run terminé (https://github.com/ocourses/ocots-demo/actions/runs/36478096807)
