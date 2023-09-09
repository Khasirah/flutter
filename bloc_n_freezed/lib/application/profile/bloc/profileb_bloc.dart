import 'package:bloc/bloc.dart';
import 'package:bloc_n_freezed/domain/core/user/user_response.dart';
import 'package:bloc_n_freezed/infrastructure/profile/profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profileb_event.dart';
part 'profileb_state.dart';
part 'profileb_bloc.freezed.dart';

class ProfilebBloc extends Bloc<ProfilebEvent, ProfilebState> {
  final _profileRepository = ProfileRepository();

  ProfilebBloc() : super(const _Initial()) {
    on<ProfilebEvent>((event, emit) async {
      emit(const ProfilebState.isLoading());

      try {
        final result = await _profileRepository.getAllUserData();
        result.fold(
          (l) => emit(ProfilebState.isError(l)),
          (r) => emit(ProfilebState.isSuccess(r)),
        );
      } catch (e) {
        emit(const ProfilebState.isError("Terjadi Kesalahan 😭"));
      }
    });
  }
}
