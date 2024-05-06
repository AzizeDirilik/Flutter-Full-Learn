import 'package:flutter/material.dart';
import 'package:flutter_101/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(title: 'd');

  @override
  void initState() {
    super.initState();

    // final user1 = PostModel()
    // ..userId = 1
    // ..title = 'hello';

    // final user2 = PostModel2(1, 2, 'a', 's');
    // user2.body='hello';
    // final user3 = PostModel3(userId: 1, id: 2, title: 's', body: 'w');

    // final user4 = PostModel4(1, 2, 'f', 'p');

    // final user5 = PostModel5(userId: 1, id: 3, title: 'j', body: 'i');
    //  user5.userId;

    //  final user6 = PostModel6(userId: 2, id: 3, title: 'd', body: 'e');
    // final user7 = PostModel7();

    //  //service
    //    final user8 = PostModel8(body: 'w');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: 'a');
            user9.updateBody('asdasd');
          });
          
        },
      ),
      appBar: AppBar(
        title: Text(user9.body ?? 'Not have any data'),
      ),
    );
  }
}
