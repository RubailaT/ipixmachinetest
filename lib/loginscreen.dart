// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';
//
// class LoginScreen extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//   Future<void> login(BuildContext context) async {
//     // Make a POST request to your login API endpoint
//     final response = await http.post(
//       'https://run.mocky.io/v3/b91498e7-c7fd-48bc-b16a-5cb970a3af8a',
//       body: {
//         'email': emailController.text,
//         'password': passwordController.text,
//       },
//     );
//
//     if (response.statusCode == 200) {
//       // Save the user's email in local storage
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.setString('email', emailController.text);
//
//       // Navigate to the home screen
//       Navigator.pushReplacementNamed(context, '/home');
//     } else {
//       // Handle login error
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextField(
//             controller: emailController,
//             decoration: InputDecoration(labelText: 'Email'),
//           ),
//           TextField(
//             controller: passwordController,
//             decoration: InputDecoration(labelText: 'Password'),
//             obscureText: true,
//           ),
//           ElevatedButton(
//             onPressed: () => login(context),
//             child: Text('Login'),
//           ),
//         ],
//       ),
//     );
//   }
// }

 import 'package:flutter/material.dart';
import 'package:ipixmachinetest/homescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  void loginUser() async {
    // Get the entered email and password values
    String email = emailController.text;
    String password = passwordController.text;

    // Perform login logic
    // Save email in Local Storage
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
  }
    bool _checkbox = false;
    bool value = false;
    TextStyle texstyle =
    TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.height/4,
                // color: Colors.white,
                child:Image(image: AssetImage("images/overseas (1).png"),),
            ),
          ),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.only(right: 280),
            child: Text("Log in",style: texstyle,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text("Your Account",style: texstyle,),
          ),
SizedBox(height: 10,),
          Padding(
            //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(

                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 1, color: Colors.orangeAccent), //<-- SEE HERE
                  ),

                  labelText: 'Email',
                  hintText: 'Enter valid email '),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(

              obscureText: true,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(width: 1, color: Colors.orangeAccent), //<-- SEE HERE
    ),
    labelText: 'Password',
    hintText: 'Enter secure password'

            ),
          ),
          ),
          Row(
            children: [
              Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.orangeAccent,
                value: _checkbox,
                onChanged: (value) {
                  setState(() {
                    _checkbox = !_checkbox;
                  });
                },
              ),
              Text('Remember me'),
              SizedBox(width: 120,),
              Text('Forgot password?',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black)),
            ],
          ),
SizedBox(height: 60,),
          ElevatedButton(
            child: Container(
                width: MediaQuery.of(context).size.width/1.3,
                child: Center(child: Text('Login',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, )))),
            style: ElevatedButton.styleFrom(
              primary: Colors.orangeAccent,
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontStyle: FontStyle.normal),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            },
          ),


        ],
            ),


    );
  }
}





