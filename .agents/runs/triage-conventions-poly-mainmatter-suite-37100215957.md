# Suivi — Triage conventions poly/mainmatter/suites.tex (#19)

| Champ | Valeur |
|-------|--------|
| Rôle | `conventions-reviewer` |
| Issue | #19 |
| Branche | `agent/triage-conventions-poly-mainmatter-suite-37100215957` |
| Modèle | `deepseek-v4-flash` |
| Run | https://github.com/ocourses/ocots-demo/actions/runs/37100215957 |
| Démarré | 2026-10-03T05:36:03Z |

## Tâche

Trie le candidat conventions ouvert dans l'issue #19 (fichier poly/mainmatter/suites.tex) en suivant le rôle conventions-reviewer : retrouve chaque trouvaille par son empreinte (bloc JSON de l'issue), relis le fichier autour, décide confirmée / faux positif / exception légitime, consigne chaque rejet par ocots-lint exempter, puis modifie CETTE issue (jamais une nouvelle) — ferme-la avec le motif de chaque rejet si rien n'est confirmé, ou réécris son corps (points confirmés et leur bloc JSON) et remplace le label conventions-candidate par conventions-style si au moins un point est confirmé. Ne modifie aucun fichier du dépôt, sauf les exemptions posées par ocots-lint exempter.

---

**Contenu de l'issue liée #19 :**

**⚠️ Candidat brut, pas relu.** Sortie de `ocots-lint verifier` (ocots-lint 0.7.0, conventions v2.6.0) — *un signal, pas un verdict*. L'outil rate des choses et signale parfois du correct ; zéro trouvaille ne veut pas dire règle respectée ([garanties](https://github.com/ocourses/ocots-lint#ce-que-loutil-garantit--et-ce-quil-ne-garantit-pas)).

**Ne pas agir sans relecture.** Un agent (`conventions-reviewer`) tranche — confirmée → `conventions-style` ; rejetée → exemption posée par `ocots-lint exempter`, pour qu'elle ne revienne pas. Les corrections mécaniques du fichier ont leur propre issue (`[nettoyer] poly/mainmatter/suites.tex`).

| Ligne | Règle | Garantie | Voie | Message |
|---|---|---|---|---|
| 2 | C5 | heuristique | tri | label chap:suites jamais cité dans le cours — à retirer tant qu'aucun renvoi n'en a besoin |
| 9 | C5 | heuristique | tri | label sec:convergence jamais cité dans le cours — à retirer tant qu'aucun renvoi n'en a besoin |
| 25 | C5 | heuristique | tri | label thm:unicite jamais cité dans le cours — à retirer tant qu'aucun renvoi n'en a besoin |
| 54 | C5 | heuristique | tri | label sec:operations jamais cité dans le cours — à retirer tant qu'aucun renvoi n'en a besoin |
| 58 | C5 | heuristique | tri | label thm:operations jamais cité dans le cours — à retirer tant qu'aucun renvoi n'en a besoin |
| 73 | C5 | heuristique | tri | label prop:inverse jamais cité dans le cours — à retirer tant qu'aucun renvoi n'en a besoin |
| 99 | C5 | heuristique | tri | label sec:monotones jamais cité dans le cours — à retirer tant qu'aucun renvoi n'en a besoin |
| 104 | C5 | heuristique | tri | label def:croissante jamais cité dans le cours — à retirer tant qu'aucun renvoi n'en a besoin |

---
_Détecté par `ocots-lint synchroniser`._
<!-- ocots-lint {"schema": 1, "fichier": "poly/mainmatter/suites.tex", "trouvailles": [{"empreinte": "c6a7575667ee0890:0", "regle": "C5", "ligne": 2, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "d0d0b5089d1706d9:0", "regle": "C5", "ligne": 9, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "330b74b8e06b009f:0", "regle": "C5", "ligne": 25, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "1a57b5bb4eceae72:0", "regle": "C5", "ligne": 54, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "3a34c62ed83f04b4:0", "regle": "C5", "ligne": 58, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "bc21edab6785e934:0", "regle": "C5", "ligne": 73, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "5e39baff846e914a:0", "regle": "C5", "ligne": 99, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "78d1c682a5ae32cf:0", "regle": "C5", "ligne": 104, "garantie": "heuristique", "voie": "tri"}]} -->

## Plan

_À rédiger par l'agent : liste d'étapes cochables._

## Journal

- 2026-10-03T05:36:03Z — chantier initialisé (issue #19, branche, PR Draft)

## Bilan

_À rédiger par l'agent en fin de run._
