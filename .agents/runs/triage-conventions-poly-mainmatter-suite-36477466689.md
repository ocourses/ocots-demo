# Suivi — Triage conventions poly/mainmatter/suites.tex (#1)

| Champ | Valeur |
|-------|--------|
| Rôle | `conventions-reviewer` |
| Issue | #1 |
| Branche | `agent/triage-conventions-poly-mainmatter-suite-36477466689` |
| Modèle | `deepseek-v4-flash` |
| Run | https://github.com/ocourses/ocots-demo/actions/runs/36477466689 |
| Démarré | 2026-09-28T20:13:41Z |

## Tâche

Trie le candidat conventions ouvert dans l'issue #1 (fichier poly/mainmatter/suites.tex) en suivant le rôle conventions-reviewer : retrouve chaque trouvaille par son empreinte (bloc JSON de l'issue), relis le fichier autour, décide confirmée / faux positif / exception légitime, consigne chaque rejet par ocots-lint exempter, puis modifie CETTE issue (jamais une nouvelle) — ferme-la avec le motif de chaque rejet si rien n'est confirmé, ou réécris son corps (points confirmés et leur bloc JSON) et remplace le label conventions-candidate par conventions-style si au moins un point est confirmé. Ne modifie aucun fichier du dépôt, sauf les exemptions posées par ocots-lint exempter.

---

**Contenu de l'issue liée #1 :**

**⚠️ Candidat brut, pas relu.** Sortie de `ocots-lint verifier` (ocots-lint 0.4.0, conventions v2.3.0) — *un signal, pas un verdict*. L'outil rate des choses et signale parfois du correct ; zéro trouvaille ne veut pas dire règle respectée ([garanties](https://github.com/ocourses/ocots-lint#ce-que-loutil-garantit--et-ce-quil-ne-garantit-pas)).

**Ne pas agir sans relecture.** Un agent (`conventions-reviewer`) tranche — confirmée → `conventions-style` ; rejetée → exemption posée par `ocots-lint exempter`, pour qu'elle ne revienne pas. Les corrections mécaniques du fichier ont leur propre issue (`[nettoyer] poly/mainmatter/suites.tex`).

| Ligne | Règle | Garantie | Voie | Message |
|---|---|---|---|---|
| 20 | P2 | heuristique | tri | definition -> theorem |
| 32 | C6 | heuristique | tri | proof finie par une équation hors texte sans \qedhere — le symbole de fin passe seul sur sa ligne |
| 54 | P3 | signal | tri | amorce passe-partout : « …Nous avons le théorème suivant. » |
| 69 | P3 | signal | tri | phrase qui se jette dans la boîte : « …Considérons la suite définie par » |
| 77 | P5 | signal | tri | 4 remarques d'affilée — vérifier qu'elles sont toutes optionnelles |
| 101 | P2 | heuristique | tri | definition -> theorem |
| 114 | C6 | heuristique | tri | proof finie par une équation hors texte sans \qedhere — le symbole de fin passe seul sur sa ligne |
| 116 | C4 | heuristique | tri | renvoi en bas de casse — « Théorème~\ref{…} » |
| 118 | C4 | heuristique | tri | mot composé — trait d'union |

---
_Détecté par `ocots-lint synchroniser`._
<!-- ocots-lint {"schema": 1, "fichier": "poly/mainmatter/suites.tex", "trouvailles": [{"empreinte": "10ef2dcadd68d77e:0", "regle": "P2", "ligne": 20, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "f027f912f1f4d4e5:0", "regle": "C6", "ligne": 32, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "d7e52e14e70008c7:0", "regle": "P3", "ligne": 54, "garantie": "signal", "voie": "tri"}, {"empreinte": "83b3483deefcc1c4:0", "regle": "P3", "ligne": 69, "garantie": "signal", "voie": "tri"}, {"empreinte": "b5b4facbb4f81d2f:0", "regle": "P5", "ligne": 77, "garantie": "signal", "voie": "tri"}, {"empreinte": "d142b49730ffc128:0", "regle": "P2", "ligne": 101, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "2e0bc43b258e2f0f:0", "regle": "C6", "ligne": 114, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "0d27bb71f96b892c:0", "regle": "C4", "ligne": 116, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "c578ace4ff1e338c:0", "regle": "C4", "ligne": 118, "garantie": "heuristique", "voie": "tri"}]} -->

## Plan

- [x] Relire l'issue et son bloc JSON; retrouver les empreintes avec `ocots-lint verifier`
- [x] Relire le fichier autour de chaque trouvaille et consulter les conventions (P2, P3, P5, C4, C6)
- [x] Décider chaque trouvaille (confirmée / faux positif / exception légitime)
- [x] Poser les exemptions pour les rejets avec `ocots-lint exempter`
- [x] Commit `chore(conventions)` des exemptions
- [x] Mettre à jour l'issue #1 (points confirmés + bloc JSON réduit + label conventions-style) ou la fermer
- [x] Compléter le fichier de suivi (journal + bilan) et commit final

## Journal

- 2026-09-28T20:13:41Z — chantier initialisé (issue #1, branche, PR Draft)
- 2026-09-28T20:2X:00Z — 9 trouvailles reçues, toutes retrouvées dans `verifier` actuel (aucune disparue)
- 2026-09-28T20:2X:00Z — 7 confirmées, 2 rejetées (exemption P3 et P5) ; commit `91830b9`
- 2026-09-28T20:2X:00Z — issue #1 réécrite (points confirmés + bloc JSON réduit), label `conventions-style`, ouverte

## Bilan

**Trouvailles** : 9 reçues (toutes retrouvées, aucune disparue) → **7 confirmées**, **2 rejetées** (dont 2 exemptées).

**Confirmées** :
- P2 (l. 20) et P2 (l. ~103) — `definition` → `theorem` sans texte de liaison entre les boîtes.
- C6 (l. 32) et C6 (l. ~116) — preuves finies par une équation hors texte sans `\qedhere`.
- P3 (l. 54) — amorce passe-partout « Nous avons le théorème suivant. » comme phrase entière.
- C4 (l. 118) — renvoi en bas de casse « le théorème~\ref{thm:monotone} ».
- C4 (l. 120) — mot composé « sous suite » (→ « sous-suite »).

**Rejetées / exemptées** :
- P3 (l. ~70) — « Considérons la suite définie par » est complétée par l'équation hors texte : la phrase ne se jette pas dans la boîte (faux positif).
- P5 (l. ~79) — quatre remarques d'affilée, toutes réellement optionnelles et indépendantes (exception légitime P5).

**Issue #1** : au moins un point confirmé → corps réécrit (7 points, chacun avec règle/ligne/justification), bloc JSON recopié réduit aux 7 entrées confirmées, label `conventions-candidate` → `conventions-style`, issue laissée **ouverte**.

**Diff** : uniquement deux lignes `% ocots-lint: ignore …` posées par `ocots-lint exempter` (contrôlé par `exempter --controler`, 0 problème). Aucune modification de contenu du cours.

**À vérifier à la main** : rien côté rendu (aucune modification de contenu) ; la relecture par un humain des exemptions posées, avant fusion de la PR.

- 2026-09-28T20:16:21Z — run terminé (https://github.com/ocourses/ocots-demo/actions/runs/36477466689)
