# Suivi — Correction conventions td/td1/td1.tex

| Champ | Valeur |
|-------|--------|
| Rôle | `conventions-fixer` |
| Issue | #20 |
| Branche | `agent/correction-conventions-td-td1-td1-tex-37181505043` |
| Modèle | `deepseek-v4-flash` |
| Run | https://github.com/ocourses/ocots-demo/actions/runs/37181505043 |
| Démarré | 2026-10-04T06:02:06Z |

## Tâche

Corrige les points CONFIRMÉS de l'issue conventions-style #20 (fichier td/td1/td1.tex) en suivant le rôle conventions-fixer : relis l'issue (verdicts déjà rendus par conventions-reviewer, pas la sortie brute du détecteur ; lignes retrouvées par l'empreinte de son bloc JSON), applique le remède documenté par ocots-conventions pour chaque règle citée, uniquement sur les points confirmés — rien d'autre dans le fichier. Un remède qui demande un choix d'auteur (ex. C2 entre deux formes réellement équivalentes) : ne tranche pas, laisse la ligne en l'état et signale-le dans le bilan.

---

**Contenu de l'issue liée #20 :**

**Verdict de relecture** (conventions v2.6.0, `ocots-lint verifier`).

Trois points C5 **confirmés** — des labels d'exercice posés mais jamais cités.

| Fichier | Ligne | Règle | Point |
|---|---|---|---|
| td/td1/td1.tex | 19 | C5 | label `ex:definition` posé sur l'exercice mais jamais renvoyé dans le cours — à retirer tant qu'aucun renvoi n'en a besoin |
| td/td1/td1.tex | 24 | C5 | label `ex:oscillante` posé sur l'exercice mais jamais renvoyé dans le cours — à retirer tant qu'aucun renvoi n'en a besoin |
| td/td1/td1.tex | 36 | C5 | label `ex:recurrente` posé sur l'exercice mais jamais renvoyé dans le cours — à retirer tant qu'aucun renvoi n'en a besoin |

C5 (communes.md, « Ne poser un label que si l'objet est cité ») : le `grep` sur tout le cours ne retourne aucune citation de `ex:definition`, `ex:oscillante` ni `ex:recurrente` ; le préfixe `ex:` est néanmoins conforme (exercice). La correction est de retirer ces labels tant qu'aucun renvoi n'en a besoin.

---
_Détecté par `ocots-lint synchroniser`._
<!-- ocots-lint {"schema": 1, "fichier": "td/td1/td1.tex", "trouvailles": [{"empreinte": "84e8b9e26a56fa85:0", "regle": "C5", "ligne": 19, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "6837a70a106abffb:0", "regle": "C5", "ligne": 24, "garantie": "heuristique", "voie": "tri"}, {"empreinte": "445ffd6600fe9b13:0", "regle": "C5", "ligne": 36, "garantie": "heuristique", "voie": "tri"}]} -->

## Plan

_À rédiger par l'agent : liste d'étapes cochables._

## Journal

- 2026-10-04T06:02:06Z — chantier initialisé (issue #20, branche, PR Draft)

## Bilan

_À rédiger par l'agent en fin de run._
