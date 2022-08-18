import 'package:flutter/material.dart';

abstract class IAuthRepository{
  Future<void> signInFirebase(BuildContext context);
}