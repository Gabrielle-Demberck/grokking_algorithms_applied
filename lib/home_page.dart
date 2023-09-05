import 'package:flutter/material.dart';

import 'presenter/appbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 1,
            pinned: true,
            snap: true,
            toolbarHeight: 250,
            bottom: const AppBarWidget(),
            floating: true,
            flexibleSpace: Container(
              color: Colors.redAccent,
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset('lib/assets/livro_capa.png'),
            ),
          ),
          SliverList.list(children: [
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black87,
                  border: Border.all(width: 1),
                ),
                child: const ListTile(
                  title: Text(
                    'Capítulo é...',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Exercício tal abcdefgh',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.terrain_rounded,
                    color: Colors.amber,
                    size: 30,
                  ),
                  trailing: Text(
                    'trailing',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
