# Générateur interactif de mots mêlés

**Démo en ligne :** https://agileanddevopstoolkit.github.io/mots-meles-icebreakler/

Application web autonome permettant de générer, jouer, imprimer et exporter des grilles de mots mêlés. Tout le code HTML, CSS et JavaScript est contenu dans un seul fichier `index.html` et s’exécute localement dans le navigateur, sans serveur ni dépendance externe.

## Fonctionnalités

- génération d’une grille à partir de 1 à 20 mots ;
- mots de 2 à 20 caractères après normalisation ;
- suppression automatique des accents, espaces et caractères spéciaux ;
- placement dans huit directions ou uniquement dans le sens de la lecture ;
- possibilité de masquer la liste des mots à trouver au démarrage, puis de l’afficher ou de la masquer à nouveau après génération ;
- sélection interactive à la souris ou au tactile, avec alignement automatique horizontal, vertical ou diagonal ;
- mots trouvés conservés en vert et rayés dans la liste ;
- signalement visuel des sélections incorrectes ;
- explication affichée dans une fenêtre contextuelle lorsqu’un mot enrichi est trouvé ;
- affichage de la solution ;
- export PNG ;
- export Markdown et copie dans le presse-papiers ;
- impression adaptée ;
- import par saisie directe, fichier texte, CSV ou JSON.

## Utilisation

1. Ouvrir `index.html` dans un navigateur récent.
2. Saisir les mots dans la zone de texte ou déposer un fichier compatible.
3. Choisir les options de génération.
4. Cliquer sur **Générer la grille**.
5. Si la liste a été masquée, utiliser **Afficher les mots à trouver** pour la révéler à tout moment.
6. Dans la grille, cliquer ou toucher la première lettre d’un mot, puis faire glisser jusqu’à sa dernière lettre.

La sélection est automatiquement contrainte à une ligne horizontale, verticale ou diagonale à 45 degrés. Le pointeur peut dépasser légèrement de la grille : la sélection reste alignée et s’arrête à sa bordure.

## Formats d’import

### Liste simple

Les mots peuvent être séparés par des retours à la ligne, des espaces, des virgules, des points-virgules ou des barres verticales.

```text
Scrum
Kanban
DevOps
Pipeline
```

Les fichiers `.txt` et `.csv` utilisent ce format.

### JSON enrichi

Le format recommandé est un tableau d’objets comportant une propriété `mot` et une propriété facultative `explication` :

```json
[
  {
    "mot": "Scrum",
    "explication": "Cadre de travail agile fondé sur des cycles courts appelés Sprints."
  },
  {
    "mot": "Kanban",
    "explication": "Méthode de gestion du flux de travail visualisé sur un tableau."
  }
]
```

Un objet racine contenant une propriété `mots` est également accepté :

```json
{
  "mots": [
    {
      "mot": "DevOps",
      "explication": "Culture et pratiques rapprochant développement et exploitation."
    }
  ]
}
```

Pour faciliter la réutilisation, les alias anglais `word`, `words`, `explanation` et `description` sont aussi reconnus. Un tableau JSON de chaînes simples reste valide.

## Exports

- **Exporter l’image** crée un fichier `mots-meles.png` contenant la grille et la liste des mots lorsqu’elle est actuellement affichée.
- **Exporter le texte** crée un fichier `mots-meles.md` avec la grille dans un bloc de code Markdown monospacé.
- **Copier en Markdown** place le même contenu dans le presse-papiers.
- Les liens du pied de page ne sont inclus dans aucun export.

## Déploiement sur GitHub Pages

Le projet étant entièrement statique, il suffit de publier `index.html` à la racine d’un dépôt GitHub et d’activer GitHub Pages sur la branche souhaitée.

## Compatibilité

L’application utilise les API standard des navigateurs modernes : Pointer Events, Canvas, Clipboard, FileReader et Blob. Une version récente de Chrome, Edge, Firefox ou Safari est recommandée.

## Liens

- Chaîne YouTube Agile Toolkit : https://youtube.com/@agiletoolkit?si=uUh6y0IFAf6Y8RRs
- Dépôt GitHub : https://github.com/AgileAndDevOpsToolkit/mots-meles-icebreakler
