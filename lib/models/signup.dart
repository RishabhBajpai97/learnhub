class Signup {
  final String username;
  final String email;
  final String password;
  final String confirmPassword;
  Signup(
      {this.username = "",
      this.email = "",
      this.password = "",
      this.confirmPassword = ""});
      
  Signup copyWith({String? username, String?email, String? password, String? confirmPassword}){
      return 
      Signup(
        username: username??this.username,
        email: email??this.email,
        password: password??this.password,
        confirmPassword: confirmPassword??this.confirmPassword,
      );
  }
}
