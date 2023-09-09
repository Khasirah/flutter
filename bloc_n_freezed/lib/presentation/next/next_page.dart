import 'package:bloc_n_freezed/application/profile/bloc/profileb_bloc.dart';
import 'package:bloc_n_freezed/domain/core/user/user_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProfilebBloc()..add(const ProfilebEvent.getAllUserData()),
      child: BlocConsumer<ProfilebBloc, ProfilebState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => homePageError("Terjadi Kesalahan yang Lain", context),
            isLoading: (value) => homePageLoading(),
            isError: (value) => homePageError(value.errorMessage, context),
            isSuccess: (value) => homePageSuccess(value.userResponse),
          );
        },
      ),
    );
  }

  Scaffold homePageError(String data, BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(data),
              IconButton(
                onPressed: () {
                  context
                      .read<ProfilebBloc>()
                      .add(const ProfilebEvent.getAllUserData());
                },
                icon: const Icon(Icons.replay),
              )
            ],
          )),
    );
  }

  Scaffold homePageLoading() {
    return const Scaffold(
        body: Center(
      child: CircularProgressIndicator(),
    ));
  }

  Scaffold homePageSuccess(UserResponse data) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Page"),
      ),
      body: ListView.builder(
          itemCount: data.data?.length,
          itemBuilder: (context, idx) => ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(data.data![idx].avatar.toString()),
                ),
                subtitle: Text(data.data![idx].email.toString()),
                title: Text(data.data![idx].firstName.toString()),
              )),
    );
  }
}
