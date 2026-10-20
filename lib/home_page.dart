import 'package:flutter/material.dart';

const List<Map<String, dynamic>> activites = [
  {"id": 1, "titre": "Dessin et coloriage", "description": "Développement de la créativité", "icone": "🎨"},
  {"id": 2, "titre": "Jeux éducatifs", "description": "Apprentissage par le jeu", "icone": "🧩"},
  {"id": 3, "titre": "Musique et chansons", "description": "Éveil musical des enfants", "icone": "🎵"},
  {"id": 4, "titre": "Lecture de contes", "description": "Découverte des histoires", "icone": "📚"},
  {"id": 5, "titre": "Activités sportives", "description": "Développement de la motricité", "icone": "⚽"},
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selected = 0;

  void _message(String texte) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(texte)));
  }

  void _selectEntry(int index, String nom) {
    setState(() => _selected = index);
    Navigator.pop(context); // ferme le Drawer
    _message('$nom sélectionné');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ma Garderie'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Ma Garderie',
                  style: TextStyle(color: Colors.white, fontSize: 26)),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Accueil'),
              selected: _selected == 0,
              onTap: () => _selectEntry(0, 'Accueil'),
            ),
            ListTile(
              leading: const Icon(Icons.palette),
              title: const Text('Activités'),
              selected: _selected == 1,
              onTap: () => _selectEntry(1, 'Activités'),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('À propos'),
              selected: _selected == 2,
              onTap: () => _selectEntry(2, 'À propos'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _message('Nouvelle activité'),
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: activites.length,
        itemBuilder: (context, index) {
          final a = activites[index];
          return Card(
            child: ListTile(
              leading: Text(a['icone'], style: const TextStyle(fontSize: 32)),
              title: Text(a['titre'], style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(a['description']),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => _message(a['titre']),
            ),
          );
        },
      ),
    );
  }
}