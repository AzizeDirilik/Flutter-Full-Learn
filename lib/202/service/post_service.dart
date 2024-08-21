import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_101/202/service/comment_model.dart';
import 'package:flutter_101/202/service/post_model.dart';

abstract class IPostService {
  Future<bool> addItemToService(PostModel postmodel);
  Future<List<PostModel>?> fetchPostItems();
  Future<bool> putItemToService(PostModel postmodel, int id);
  Future<bool> deleteItemToService(int id);
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId);
}

class PostService implements IPostService {
  late final Dio _networkManager;
  PostService()
      : _networkManager =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  @override
  Future<bool> addItemToService(PostModel postmodel) async {
    try {
      final response = await _networkManager.post(_PostServicePath.posts.name,
          data: postmodel);

      return response.statusCode == HttpStatus.created;
    } on DioException catch (exception) {
      _ShowDebugMessages.showDebug(exception, this);
    }
    return false;
  }

  @override
  Future<List<PostModel>?> fetchPostItems() async {
    try {
      final response = await _networkManager.get(_PostServicePath.posts.name);

      if (response.statusCode == HttpStatus.ok) {
        final datas = response.data;

        if (datas is List) {
          return datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } on DioException catch (exception) {
      _ShowDebugMessages.showDebug(exception, this);
    }
    return null;
  }

  @override
  Future<bool> putItemToService(PostModel postmodel, int id) async {
    try {
      final response = await _networkManager
          .put('{$_PostServicePath.posts.name}/$id', data: postmodel);

      return response.statusCode == HttpStatus.ok;
    } on DioException catch (exception) {
      _ShowDebugMessages.showDebug(exception, this);
    }
    return false;
  }

  @override
  Future<bool> deleteItemToService(int id) async {
    try {
      final response =
          await _networkManager.put('{$_PostServicePath.posts.name}/$id');

      return response.statusCode == HttpStatus.ok;
    } on DioException catch (exception) {
      _ShowDebugMessages.showDebug(exception, this);
    }
    return false;
  }

  @override
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId) async {
    try {
      final response = await _networkManager.get(_PostServicePath.comments.name,
          queryParameters: {_PostQueryPaths.postId.name: postId});

      if (response.statusCode == HttpStatus.ok) {
        final datas = response.data;

        if (datas is List) {
          return datas.map((e) => CommentModel.fromJson(e)).toList();
        }
      }
    } on DioException catch (exception) {
      _ShowDebugMessages.showDebug(exception, this);
    }
    return null;
  }
}

enum _PostServicePath { posts, comments }

enum _PostQueryPaths { postId }

class _ShowDebugMessages {
  static void showDebug<T>(DioException error, T type) {
    if (kDebugMode) {
      print(error.message);
      print(type);
      print('------');
    }
  }
}
