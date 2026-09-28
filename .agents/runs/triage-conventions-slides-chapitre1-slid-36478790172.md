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

- [x] Lire l'issue #2 et son bloc JSON (empreinte, règle, ligne, garantie)
- [x] Retrouver la trouvaille par empreinte et relire le fichier autour
- [x] Trancher la trouvaille P2 (`definition -> theorem`)
- [x] Réécrire l'issue #2 (points confirmés + bloc JSON) et changer le label
- [x] Rédiger le bilan

## Journal

- 2026-09-28T20:24:36Z — chantier initialisé (issue #2, branche, PR Draft)
- 2026-09-28T21:00:00Z — `ocots-lint verifier` : empreinte `28b1a9332f45abaa:0` (P2) encore active, ligne 23. Relecture du fichier : `definition` → `theorem` collées sous le même `slide{Convergence}` sans `\pause` ni texte entre elles.
- 2026-09-28T21:00:00Z — décision : **confirmée**. Sur `slides`, SL4 remplace la liaison par le titre de diapo mais ne documente aucune exception pour deux boîtes sous un même `slide{titre}`. Issue réécrite (`conventions-style`), restaurée ouverte ; pas d'exemption (rien de rejeté), pas de modification du fichier cours.

## Bilan

- **Trouvailles reçues :** 1 (P2, `definition -> theorem`, ligne 23).
- **Confirmées :** 1. `definition` (Suite convergente) et `theorem` (Unicité) sont deux boîtes indépendantes, directement accolées sous le même `slide{Convergence}`, sans `\pause` ni liaison. En support `slides`, SL4 ne documente aucune exception pour une chaîne sous un même `slide{titre}` : la chaîne reste une infraction P2. Le remède attendu est de scinder chaque boîte sur sa propre diapositive titrée (cohérent avec SL3), pas d'ajouter une phrase de liaison (hors idiome SL4).
- **Rejetées / exemptées :** aucune (rien à consigner par `ocots-lint exempter`).
- **Disparues :** aucune.
- **En plus du signal brut :** justification adaptée au support `slides` (remede par découpage de diapositives, conformément à SL3/SL4).
- **Issue #2 :** corps réécrit (point confirmé + bloc JSON réduit à la seule entrée confirmée), label `conventions-candidate` → `conventions-style`, laissée **ouverte** pour le rôle de correction.
- **À vérifier à la main :** contenu du fichier cours inchangé (aucune écriture, pas d'exemption posée — la trouvaille étant confirmée). Le correcteur devra scinder la diapositive `Convergence` en deux diapositives titrées.

- 2026-09-28T20:25:45Z — run terminé (https://github.com/ocourses/ocots-demo/actions/runs/36478790172)
