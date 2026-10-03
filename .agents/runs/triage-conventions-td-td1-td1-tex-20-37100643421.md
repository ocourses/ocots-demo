# Suivi — Triage conventions td/td1/td1.tex (#20)

| Champ | Valeur |
|-------|--------|
| Rôle | `conventions-reviewer` |
| Issue | #20 |
| Branche | `agent/triage-conventions-td-td1-td1-tex-20-37100643421` |
| Modèle | `deepseek-v4-flash` |
| Run | https://github.com/ocourses/ocots-demo/actions/runs/37100643421 |
| Démarré | 2026-10-03T05:43:03Z |

## Tâche

Trie le candidat conventions ouvert dans l'issue #20 (fichier td/td1/td1.tex) en suivant le rôle conventions-reviewer : retrouve chaque trouvaille par son empreinte (bloc JSON de l'issue), relis le fichier autour, décide confirmée / faux positif / exception légitime, consigne chaque rejet par ocots-lint exempter, puis modifie CETTE issue (jamais une nouvelle) — ferme-la avec le motif de chaque rejet si rien n'est confirmé, ou réécris son corps (points confirmés et leur bloc JSON) et remplace le label conventions-candidate par conventions-style si au moins un point est confirmé. Ne modifie aucun fichier du dépôt, sauf les exemptions posées par ocots-lint exempter.

---

**Contenu de l'issue liée #20 :**

**⚠️ Candidat brut, pas relu.** Sortie de `ocots-lint verifier` (ocots-lint 0.7.0, conventions v2.6.0) — *un signal, pas un verdict*. L'outil rate des choses et signale parfois du correct ; zéro trouvaille ne veut pas dire règle respectée ([garanties](https://github.com/ocourses/ocots-lint#ce-que-loutil-garantit--et-ce-quil-ne-garantit-pas)).

**Ne pas agir sans relecture.** Un agent (`conventions-reviewer`) tranche — confirmée → `conventions-style` ; rejetée → exemption posée par `ocots-lint exempter`, pour qu'elle ne revienne pas. Les corrections mécaniques du fichier ont leur propre issue (`[nettoyer] td/td1/td1.tex`).

| Ligne | Règle | Garantie | Voie | Message |
|---|---|---|---|---|
| 19 | C5 | heuristique | tri | label ex:definition jamais cité dans le cours — à retirer tant qu'aucun renvoi n'en a besoin |
| 24 | C5 | heuristique | tri | label ex:oscillante jamais cité dans le cours — à retirer tant qu'aucun renvoi n'en a besoin |
| 36 | C5 | heuristique | tri | label ex:recurrente jamais cité dans le cours — à retirer tant qu'aucun renvoi n'en a besoin |

---
_Détecté par `ocots-lint synchroniser`._
<!-- ocots-lint {"schema": 1, "fichier": "td/td1/td1.tex", "trouvailles": [{"empreinte": "84e8b9e26a56fa85:0", "regle": "C5", "ligne": 19, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "6837a70a106abffb:0", "regle": "C5", "ligne": 24, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "445ffd6600fe9b13:0", "regle": "C5", "ligne": 36, "garantie": "heuristique", "voie": "tri"}]} -->

## Plan

- [x] Lire l'issue #20 et son bloc JSON (empreintes, règles, garanties)
- [x] Retrouver chaque trouvaille par empreinte dans le fichier actuel
- [x] Relire le fichier, vérifier les renvois réels des trois labels
- [x] Décider confirmée / faux positif / exception légitime pour chacune
- [x] Consigner les rejets par `ocots-lint exempter` (si rejet)
- [x] Modifier l'issue #20 (corps/bloc JSON/labels) selon le verdict
- [x] Rédiger le bilan

## Journal

- 2026-10-03T05:43:03Z — chantier initialisé (issue #20, branche, PR Draft)
- 2026-10-03 — relecture du fichier : 3 labels d'exercice (`ex:definition`, `ex:oscillante`, `ex:recurrente`) posés mais jamais renvoyés. `grep` sur tout le dépôt : aucune citation.
- 2026-10-03 — verdict : 3/3 confirmés (C5). Corps de l'issue réécrit (points confirmés + bloc JSON réduit), labels passés sur `conventions-style`, issue laissée ouverte.

## Bilan

Trouvailles reçues : 3 (C5, heuristique, voie tri).

- **Confirmées : 3** — `ex:definition` (l.19), `ex:oscillante` (l.24), `ex:recurrente` (l.36). Trois labels d'exercice posés mais jamais renvoyés nulle part dans le cours (`grep -rn` sur tous les `.tex` : aucune citation). Infraction directe à C5 « Ne poser un label que si l'objet est cité » (communes.md). Le préfixe `ex:` est conforme, seul le renvoi manque.
- **Rejetées : 0** — aucune exemption posée (aucun rejet).
- **Disparues : 0** — les trois empreintes de l'issue correspondent aux trouvailles actuelles, aucune n'a bougé.

Motif du triage : labels orphelins posés « au cas où », exactement le cas que C5 interdit.

Issue #20 : corps réécrit avec les trois points confirmés (règle, ligne actuelle, justification) suivi du bloc `<!-- ocots-lint … -->` réduit aux trois entrées confirmées (champs inchangés) ; label `conventions-candidate` → `conventions-style` ; issue laissée **ouverte** pour le rôle de correction. Aucune modification du contenu du dépôt (pas même d'exemption).

Rien d'autre remarqué en relisant (pas de règle non outillée pertinente).

