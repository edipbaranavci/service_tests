import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/error_model.dart';
import '../../../models/user_model/user_model.dart';
import '../../../services/user_service.dart';

part 'user_list_state.dart';

class UserListCubit extends Cubit<UserListState> {
  UserListCubit() : super(UserListInitial()) {
    getUserList();
  }

  final _userService = UserService();
  ErrorModel errorModel = ErrorModel();

  Future<void> getUserList() async {
    final userList = await _userService.getUsers();
    if (userList.isLeft) {
      errorModel = userList.left;
      emit(state);
    } else if (userList.isRight) {
      emit(state.copyWith(userList: userList.right));
    }
  }
}
