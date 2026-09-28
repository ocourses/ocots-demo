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

_À rédiger par l'agent : liste d'étapes cochables._

## Journal

- 2026-09-28T20:13:41Z — chantier initialisé (issue #1, branche, PR Draft)

## Bilan

_À rédiger par l'agent en fin de run._
