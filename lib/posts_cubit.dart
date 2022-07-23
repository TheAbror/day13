import 'package:day13/data_services.dart';
import 'package:day13/post.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsCubit extends Cubit<List<Post>> {
  final _dataServices = DataService();
  PostsCubit() : super([]);

  void getposts() async => emit(await _dataServices.getPosts());
}
