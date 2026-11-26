# Spark of Madness — documentation des personnages

Site MkDocs regroupant le contenu additionnel de création de personnage de la campagne **Spark of Madness**.

## Mettre à jour le contenu

Les fiches publiées sont dans `docs/Content/`. Pour recopier les fiches correspondantes depuis le vault situé au dossier parent, lancez PowerShell depuis ce dépôt :

```powershell
.\scripts\sync-character-content.ps1
```

Vérifiez les changements, puis commitez et poussez-les sur `main`. L'action GitHub `Publish documentation` reconstruira le site et publiera la nouvelle version sur la branche `gh-pages`.

Lors de la première publication, configurez GitHub Pages dans les paramètres du dépôt pour publier depuis la branche `gh-pages`, dossier `/ (root)`.

Pour ajouter une fiche, placez-la dans la catégorie appropriée sous `docs/Content/` et ajoutez-la à la navigation de `mkdocs.yml`.
