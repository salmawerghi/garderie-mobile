# 👶 Ma Garderie - Application Mobile Flutter

Application mobile Flutter conviviale et interactive conçue pour une garderie d'enfants. Elle permet de découvrir les différentes activités d'éveil, de naviguer dans un menu dédié et d'interagir avec l'interface.

---

## 🌟 Fonctionnalités

1. **Écran de démarrage (Splash Screen) :**
   - Écran d'accueil au design chaleureux (fond crème `#FFFBF2`).
   - Image d'accueil personnalisée de la garderie avec gestion d'icône de secours (`errorBuilder`).
   - Titre et message de bienvenue.
   - Redirection automatique et sécurisée vers l'écran principal après 3 secondes (`Timer`).

2. **Écran principal (Accueil & Activités) :**
   - **AppBar** bleue personnalisée avec titre centré.
   - **Menu latéral (Drawer)** accessible pour naviguer entre :
     - *Accueil* (icône `home`)
     - *Activités* (icône `palette`)
     - *À propos* (icône `info`)
   - **Liste dynamique des activités** réalisée avec un `ListView.builder` et des `Card` esthétiques :
     - 🎨 Dessin et coloriage (Développement de la créativité)
     - 🧩 Jeux éducatifs (Apprentissage par le jeu)
     - 🎵 Musique et chansons (Éveil musical des enfants)
     - 📚 Lecture de contes (Découverte des histoires)
     - ⚽ Activités sportives (Développement de la motricité)

3. **Interactions dynamiques (SnackBars) :**
   - Clic sur une activité : affiche son titre via un `SnackBar`.
   - Clic sur le bouton flottant (FAB `+`) : affiche « Nouvelle activité ».
   - Sélection d'un élément du menu (Drawer) : met à jour l'élément actif, ferme le menu et affiche une notification contextuelle.

---

## 🛠️ Technologies Utilisées

- **Flutter** (Framework UI multiplateforme)
- **Dart** (Langage de programmation moderne et typé)
- **Git** (Gestion de versions décentralisée)
- **GitHub** (Hébergement et suivi du dépôt distant)

---

## 🚀 Installation et Exécution

### Prérequis
- Flutter SDK (version 3.x ou supérieure)
- Un émulateur Android/iOS ou un navigateur Chrome / Edge

### Étapes d'installation

1. **Cloner le dépôt :**
   ```bash
   git clone https://github.com/salmawerghi/garderie-mobile.git
   cd garderie-mobile
   ```

2. **Récupérer les dépendances :**
   ```bash
   flutter pub get
   ```

3. **Lancer l'application :**
   ```bash
   flutter run
   ```

---

## 📸 Captures d'écran

| Splash Screen | Page Principale |
| :---: | :---: |
| ![Splash Screen](screenshots/splash.png) | ![Page principale](screenshots/home.png) |

| Menu Drawer | Interactions & SnackBar |
| :---: | :---: |
| ![Menu Drawer](screenshots/drawer.png) | ![Interactions](screenshots/interaction.png) |
