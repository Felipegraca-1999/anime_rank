
import 'package:anime_rank/core/repository/auth/auth_repository_interface.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final IAuthRepository _authRepository;
  LoginCubit(this._authRepository) : super(const LoginState());

  Future<void> login(BuildContext context) async {
    _authRepository.signInFirebase(context);
  }
}
