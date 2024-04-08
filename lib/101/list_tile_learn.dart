import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  final String title = 'Title';
  final String subtitle = 'Subtitle';
  final String title2 = 'Title 2';
  final String subtitle2 = 'Subtitle 2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding().projectPadding,
        child: Column(
          children: [
            _ListTile(title: title, subtitle: subtitle),
            Card(
                child: Padding(
              padding: ProjectPadding().listTilePadding,
              child: _ListTile(title: title2, subtitle: subtitle2),
            ))
          ],
        ),
      ),
    );
  }
}

class _ListTile extends StatelessWidget {
  const _ListTile({
    // ignore: unused_element
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: false,
      contentPadding: EdgeInsets.zero,
      onTap: () {},
      title: Text(title),
      subtitle: Text(subtitle),
      leading: const Icon(Icons.hail),
      trailing: const Icon(Icons.chevron_right_outlined),
    );
  }
}

class ProjectPadding {
  final EdgeInsets projectPadding = const EdgeInsets.symmetric(horizontal: 10);
  final EdgeInsets listTilePadding = const EdgeInsets.symmetric(horizontal: 10);
}
