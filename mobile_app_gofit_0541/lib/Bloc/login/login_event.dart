part of 'login_bloc.dart';


//* Representasi Abstrak Semua Event Pada Form login
abstract class LoginEvent{}



//* Representasi Evnt perubahan username
class LoginUsernameChanged extends LoginEvent{
  final String? username;
  LoginUsernameChanged({this.username});
}



//* Representasi Event perubahan password
class LoginPasswordChanged extends LoginEvent{
  final String? password;

  LoginPasswordChanged({this.password});
}


//* Login Submitted
class LoginSubmitted extends LoginEvent{}

class Logout extends LoginEvent{
  final String? username;
  final String? password;

  Logout({this.username, this.password});
}