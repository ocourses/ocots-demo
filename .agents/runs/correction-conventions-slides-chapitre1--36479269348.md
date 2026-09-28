# Suivi — Correction conventions slides/chapitre1/slides_chapitre_1.tex

| Champ | Valeur |
|-------|--------|
| Rôle | `conventions-fixer` |
| Issue | #2 |
| Branche | `agent/correction-conventions-slides-chapitre1--36479269348` |
| Modèle | `deepseek-v4-flash` |
| Run | https://github.com/ocourses/ocots-demo/actions/runs/36479269348 |
| Démarré | 2026-09-28T20:29:25Z |

## Tâche

Corrige les points CONFIRMÉS de l'issue conventions-style #2 (fichier slides/chapitre1/slides_chapitre_1.tex) en suivant le rôle conventions-fixer : relis l'issue (verdicts déjà rendus par conventions-reviewer, pas la sortie brute du détecteur ; lignes retrouvées par l'empreinte de son bloc JSON), applique le remède documenté par ocots-conventions pour chaque règle citée, uniquement sur les points confirmés — rien d'autre dans le fichier. Un remède qui demande un choix d'auteur (ex. C2 entre deux formes réellement équivalentes) : ne tranche pas, laisse la ligne en l'état et signale-le dans le bilan.

---

**Contenu de l'issue liée #2 :**

## Constat vérifié — achievements P2 (slides)

Relecture par `conventions-reviewer` : une trouvaille confirmée.

### Confirmé

**P2 — enchaînement `definition` → `theorem` sans texte entre elles** (ligne 23, support `slides`).

Dans `slide{Convergence}`, la boîte `definition` (Suite convergente), ligne 20, est directement suivie de la boîte `theorem` (Unicité), ligne 25, sans aucune liaison (pas de `\pause`, pas de texte). Sur un support `slides`, [SL4](conventions/slides.md#sl4--le-transparent-nest-pas-le-polycopie) remplace la phrase de liaison par le titre de diapositive, mais ne documente **aucune exception** pour deux boîtes sous un même `slide{titre}` : une chaîne confirmée reste confirmée. La correction attendue, cohérente avec SL3 (« une idée par diapositive »), est de **scinder chaque boîte sur sa propre diapositive titrée** — pas d'ajouter une phrase de liaison, hors idiome pour ce support.

<!-- ocots-lint {"schema": 1, "fichier": "slides/chapitre1/slides_chapitre_1.tex", "trouvailles": [{"empreinte": "28b1a9332f45abaa:0", "regle": "P2", "ligne": 23, "garantie": "heuristique", "voie": "tri"}]} -->

## Plan

_À rédiger par l'agent : liste d'étapes cochables._

## Journal

- 2026-09-28T20:29:25Z — chantier initialisé (issue #2, branche, PR Draft)

## Bilan

_À rédiger par l'agent en fin de run._
