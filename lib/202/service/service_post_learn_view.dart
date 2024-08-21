import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_101/202/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  bool _isLoading = false;
  String? name;
  late final Dio _networkManager;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemToService(PostModel postmodel) async {
    final response = await _networkManager.post('posts',
        data: postmodel,
        options: Options(
            contentType:
                Headers.jsonContentType)); // dio uyarisi icin content belirtme

    _changeLoading();
    if (response.statusCode == HttpStatus.created) {
      setState(() {
        Text(name = 'Basarili');
      });
    }

    _changeLoading();
  }

  @override
  void initState() {
    super.initState();
    _networkManager = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
    _userIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name ?? 'bos'),
          actions: [
            _isLoading
                ? const CircularProgressIndicator()
                : const SizedBox.shrink(),
          ],
        ),
        body: Column(
          children: [
            TextField(
              controller: _titleController,
              textInputAction: TextInputAction.next,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[^0-9]'))
              ],
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: _bodyController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[^0-9]'))
              ],
              decoration: const InputDecoration(
                labelText: 'Body',
              ),
            ),
            TextField(
              controller: _userIdController,
              autofillHints: const [AutofillHints.creditCardNumber],
              keyboardType: TextInputType.number,
              inputFormatters: const [],
              decoration: const InputDecoration(
                labelText: 'User ID',
              ),
            ),
            TextButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        if (_titleController.text.isNotEmpty &&
                            _bodyController.text.isNotEmpty &&
                            _userIdController.text.isNotEmpty) {
                          final model = PostModel(
                            body: _bodyController.text,
                            title: _titleController.text,
                            userId: int.tryParse(_userIdController.text),
                          );
                          _addItemToService(model);

                          Future.delayed(const Duration(seconds: 1), () {
                            _titleController.clear();
                            _bodyController.clear();
                            _userIdController.clear();
                          });
                        }
                      },
                child: const Text('Send'))
          ],
        ));
  }
}
