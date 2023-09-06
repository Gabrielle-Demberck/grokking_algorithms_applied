import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final String description;
  final String trailing;
  final VoidCallback onTap;
  const ListTileWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.trailing,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
          border: Border.all(width: 1),
        ),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            description,
            style: const TextStyle(color: Colors.white),
          ),
          leading: const Icon(
            Icons.note,
            color: Colors.redAccent,
            size: 30,
          ),
          trailing: Text(
            trailing,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
