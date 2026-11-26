# Spark of Madness — Character Options

MkDocs site for the additional character creation options in the **Spark of Madness** campaign.

## Updating the content

Published character options are in `docs/Content/`. To copy the corresponding files from the vault in the parent folder, run this script in PowerShell:

```powershell
.\scripts\sync-character-content.ps1
```

Review the changes, then commit and push them to `main`. The `Publish documentation` GitHub Action will rebuild the site and publish the new version to the `gh-pages` branch.

For the first publication, configure GitHub Pages in the repository settings to publish from the `gh-pages` branch, using the `/ (root)` folder.

To add a character option, place it in the appropriate category under `docs/Content/` and add it to the navigation in `mkdocs.yml`.
