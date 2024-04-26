import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          padding: PaddingUtility().paddingHorizontal,
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return _CategoryCard(model: _items[index]);
          },
        ));
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Card(
        margin: PaddingUtility().paddingBottom,
        child: Padding(
          padding: PaddingUtility().paddingTop,
          child: Column(
            children: [
              Expanded(
                  child: Image.network(
                _model.imagePath,
              )),
              Padding(
                padding: PaddingUtility().paddingBottom +
                    PaddingUtility().paddingTop +
                    PaddingUtility().paddingHorizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _model.title,
                    ),
                    Text('${_model.price} eth')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class CollectionItems {
  late List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Abstarct Art',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Abstarct Art',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Abstarct Art',
          price: 3.4),
    ];
  }
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImage {
  static const imageCollection = 'https://picsum.photos/300/200';
}
