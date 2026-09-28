# ocots-demo — cours de démonstration

Un petit cours **synthétique** (suites réelles : un polycopié, un TD, des
transparents), public, qui sert de **mise en situation réelle** à la chaîne
d'outils des cours `ocourses` :

- [`ocots-latex-template`](https://github.com/ocourses/ocots-latex-template)
  (sous-module `template/`) ;
- [`ocots-conventions`](https://github.com/ocourses/ocots-conventions)
  (sous-module `conventions/`) et son vérificateur
  [`ocots-lint`](https://github.com/ocourses/ocots-lint) ;
- la file d'agents [`ocourses/agents`](https://github.com/ocourses/agents).

Le texte contient **volontairement** des écarts aux conventions. Chaque
lundi, `ocots-lint synchroniser` ouvre les issues `[conventions]` et
`[nettoyer]` ; la file les traite (tri, correction, nettoyage mécanique) et
ouvre des PR Draft. Ce dépôt permet d'observer toute la chaîne, de bout en
bout, sans exposer un cours réel — et sans consommer le quota de minutes des
dépôts privés.

Rien ici n'est un support d'enseignement : ne pas s'en servir comme tel.

## Compiler

```bash
git clone --recurse-submodules https://github.com/ocourses/ocots-demo
cd ocots-demo/poly && latexmk -pdf main.tex            # idem td/td1, slides/chapitre1
```

## Vérifier

```bash
./conventions/bin/verifier                               # nécessite uv
./conventions/bin/ocots-lint synchroniser --dry-run      # ce que lundi ouvrira
```

## Versions

| Sous-module | Version |
|---|---|
| `template` | `v1.1.0` |
| `conventions` | `v2.3.0` (ocots-lint `v0.4.0`) |
