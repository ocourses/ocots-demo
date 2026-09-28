# Suivi — Triage conventions slides/chapitre1/slides_chapitre_1.tex (#2)

| Champ | Valeur |
|-------|--------|
| Rôle | `conventions-reviewer` |
| Issue | #2 |
| Branche | `agent/triage-conventions-slides-chapitre1-slid-36478790172` |
| Modèle | `deepseek-v4-flash` |
| Run | https://github.com/ocourses/ocots-demo/actions/runs/36478790172 |
| Démarré | 2026-09-28T20:24:36Z |

## Tâche

Trie le candidat conventions ouvert dans l'issue #2 (fichier slides/chapitre1/slides_chapitre_1.tex) en suivant le rôle conventions-reviewer : retrouve chaque trouvaille par son empreinte (bloc JSON de l'issue), relis le fichier autour, décide confirmée / faux positif / exception légitime, consigne chaque rejet par ocots-lint exempter, puis modifie CETTE issue (jamais une nouvelle) — ferme-la avec le motif de chaque rejet si rien n'est confirmé, ou réécris son corps (points confirmés et leur bloc JSON) et remplace le label conventions-candidate par conventions-style si au moins un point est confirmé. Ne modifie aucun fichier du dépôt, sauf les exemptions posées par ocots-lint exempter.

---

**Contenu de l'issue liée #2 :**

**⚠️ Candidat brut, pas relu.** Sortie de `ocots-lint verifier` (ocots-lint 0.4.0, conventions v2.3.0) — *un signal, pas un verdict*. L'outil rate des choses et signale parfois du correct ; zéro trouvaille ne veut pas dire règle respectée ([garanties](https://github.com/ocourses/ocots-lint#ce-que-loutil-garantit--et-ce-quil-ne-garantit-pas)).

**Ne pas agir sans relecture.** Un agent (`conventions-reviewer`) tranche — confirmée → `conventions-style` ; rejetée → exemption posée par `ocots-lint exempter`, pour qu'elle ne revienne pas. Les corrections mécaniques du fichier ont leur propre issue (`[nettoyer] slides/chapitre1/slides_chapitre_1.tex`).

| Ligne | Règle | Garantie | Voie | Message |
|---|---|---|---|---|
| 23 | P2 | heuristique | tri | definition -> theorem |

---
_Détecté par `ocots-lint synchroniser`._
<!-- ocots-lint {"schema": 1, "fichier": "slides/chapitre1/slides_chapitre_1.tex", "trouvailles": [{"empreinte": "28b1a9332f45abaa:0", "regle": "P2", "ligne": 23, "garantie": "heuristique", "voie": "tri"}]} -->

## Plan

_À rédiger par l'agent : liste d'étapes cochables._

## Journal

- 2026-09-28T20:24:36Z — chantier initialisé (issue #2, branche, PR Draft)

## Bilan

_À rédiger par l'agent en fin de run._
