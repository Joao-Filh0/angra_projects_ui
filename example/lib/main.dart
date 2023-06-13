import 'package:example/list_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  String title = listPages[0].runtimeType.toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Angra example UI"),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: listPages.length,
            itemBuilder: (BuildContext context, int index) => ListTile(
              title: Text(
                listPages[index].runtimeType.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.sizeOf(context).width * 0.02),
              ),
              onTap: () async {
                Navigator.pop(context);
                setState(() {
                  title = listPages[index].runtimeType.toString();
                });
                _pageController.jumpToPage(index);
              },
            ),
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: listPages,
      ),
    );
  }
}
