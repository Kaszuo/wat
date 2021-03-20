import 'package:flutter/material.dart';

import '../page.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  void onIndexChange(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            // UserAccountsDrawerHeader(
            //   currentAccountPicture: CircleAvatar(
            //     backgroundImage: NetworkImage("https://ichef.bbci.co.uk/news/800/cpsprodpb/51F3/production/_106997902_gettyimages-611696954.jpg"),
            //   ),
            //   accountName: Text("Nutttawut Wangta"),
            //   accountEmail: Text("seagame@gmail.com"),
            //   ),
            DrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://www.chiangmaiexpert.com/wp-content/uploads/2016/11/%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B9%80%E0%B8%88%E0%B9%87%E0%B8%94%E0%B8%A2%E0%B8%AD%E0%B8%94-1170x783.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://www.watjedyod.com/images/noimg.png"),
                      ),
                      Text("7"),
                    ],
                  ),
                )),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/history');
              },
              leading: Icon(Icons.history_edu),
              title: Text("ประวัติ"),
            ),
            ListTile(
              leading: Icon(Icons.new_releases),
              title: Text("ข่าวสาร"),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/credit');
              },
              leading: Icon(Icons.people),
              title: Text("เครดิต"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(pages[currentIndex].title),
      ),
      body: pages[currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onIndexChange,
          items: pages
              .map(
                (page) =>
                    BottomNavigationBarItem(icon: page.icon, label: page.label),
              )
              .toList()),
    );
  }
}
