import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/user_model/user_model.dart';
import '../cubit/user_list_cubit.dart';

class UserListView extends StatelessWidget {
  const UserListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserListCubit>(
      create: (context) => UserListCubit(),
      child: const _UserList(),
    );
  }
}

class _UserList extends StatelessWidget {
  const _UserList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UserListView')),
      body: BlocConsumer<UserListCubit, UserListState>(
        listener: (context, state) {
          if ((state.userList?.length ?? 0) < 1) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Column(
                  children: [
                    Text(
                      context.read<UserListCubit>().errorModel.errorMessage ??
                          '',
                    ),
                    Text(
                      context.read<UserListCubit>().errorModel.statusCode ?? '',
                    ),
                  ],
                ),
              ),
            );
          } else {}
        },
        builder: (context, state) {
          return Column(
            children: List.generate(
              context.read<UserListCubit>().state.userList?.length ?? 0,
              (index) => userListTile(index, state.userList?[index]),
            ),
          );
        },
      ),
    );
  }

  ListTile userListTile(int index, UserModel? model) {
    return ListTile(
      leading: Text(model?.id.toString() ?? ''),
      title: Text(model?.name ?? ''),
      subtitle: Text(model?.username ?? ''),
      trailing: Text(model?.phone ?? ''),
    );
  }
}
