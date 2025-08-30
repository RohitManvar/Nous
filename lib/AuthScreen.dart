import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nous/MainScreen.dart';
import 'main.dart';
class AuthScreen extends StatefulWidget{
  final VoidCallback toggleTheme;
  final bool isDarkMode;
  const AuthScreen({required this.toggleTheme, required this.isDarkMode, Key? key}) : super(key: key);
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool isLogin = true;

  String error = "";

  void login(BuildContext context)async{
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    if(isLogin){
      if(email.isEmpty || password.isEmpty){
        error="Please fill in all fields";
      }
      else if(email=='rohit'||password=='rohit'){
        Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(toggleTheme: widget.toggleTheme, isDarkMode: widget.isDarkMode)));
      }else{
        error="Invalid Credentials";
      }
    }else{
      error="Registration is not implemented yet";
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Authentication"),),
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),border: Border.all(color:Color(0xFFFB923C))),
          padding: EdgeInsets.all(50),
          height: 400,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Welcome to the BookNest", style: TextStyle(color:Color(0xFFFB923C),fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              TextField(
                controller: emailController ,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: ()=> {
                  login(context),
                  if(error.isNotEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(error)),
                    )
                  }
                },
                child: const Text("Login"),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(toggleTheme: widget.toggleTheme, isDarkMode: widget.isDarkMode)));},
                child: const Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class RegisterScreen extends StatefulWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;
  const RegisterScreen({required this.toggleTheme, required this.isDarkMode, Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool isRegister = true;

  String error = "";


  void Register(BuildContext context)async{
    final username = usernameController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final conformPassword = passwordController.text.trim();
    if(isRegister){
      if(email.isEmpty || password.isEmpty || username.isEmpty || conformPassword.isEmpty){
        error="Please fill in all fields";
      }
      else if(email.isNotEmpty||username.isNotEmpty && password == conformPassword){
        Navigator.push(context, MaterialPageRoute(builder: (context) => AuthScreen(toggleTheme: widget.toggleTheme, isDarkMode: widget.isDarkMode)));
      }else{
        error="";
      }
    }else{
      error="Registration is not implemented yet";
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),),
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.all(50),
          height: 500,
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Welcome to the BookNest", style: TextStyle(color:Colors.white,fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: emailController ,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),

              ElevatedButton(
                onPressed: ()=> {
                  Register(context),
                  if(error.isNotEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(error)),
                    )
                  }
                },
                child: const Text("Register"),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AuthScreen(toggleTheme: widget.toggleTheme, isDarkMode: widget.isDarkMode)));
                },
                child: const Text("back to Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}