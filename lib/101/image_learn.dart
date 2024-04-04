import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  final String _imagePath = 'https://sm.ign.com/ign_tr/screenshot/default/biggestanimecoming2023-blogroll-1-1670958673878_pdbp.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: 200,
            child: ImagePng(name: ImagePath().imageBook),
          ),
          Image.network(_imagePath,
          errorBuilder: (context, error, stackTrace) => const Icon(Icons.abc_outlined)),
        ],
      ),
    );
  }
}

class ImagePath {
  final String imageBook = 'book';
  final String bookWithApple = 'apple-on-books-scrapbook-cut-cute-s-for-silhouette-cricut';
}

class ImagePng extends StatelessWidget {
  const ImagePng({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover,);
  }

  String get _nameWithPath => 'assets/images/$name.png';
}
