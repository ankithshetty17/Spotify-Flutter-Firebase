import 'package:dartz/dartz.dart';
import 'package:spotify/data/datasource/auth/auth_firebase_service.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';
import 'package:spotify/domain/repositories/auth/auth_repository.dart';
import 'package:spotify/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository{
  @override
  Future<Either> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
   return  await   sl<AuthFirebaseService>().signup(createUserReq);
  }
  
}