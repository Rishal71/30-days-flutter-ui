import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      
      body: Stack(
        children: [
        
          Positioned(
            top: 100,
            left: 20,
            child: SizedBox(
              width: 200,
              child: Text(
                'Create An Account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 610,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        textfiled(icon: Icons.person),
                        SizedBox(height: 20),
                        textfiled(icon: Icons.email),
                        SizedBox(height: 20),
                        textfiled(icon: Icons.lock),
                        SizedBox(height: 20),
                        textfiled(icon: Icons.lock),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent,foregroundColor: Colors.white,minimumSize: Size.fromHeight(50),),
                      onPressed: (){},
                     child: Text('Register',style: TextStyle(),)),
                  ),
                  SizedBox(height: 20,),
                  Text('or register with',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assests/images/logo.webp',width: 40,height: 50,),
                  
                      Image.asset('assests/images/download.png',width: 80,height: 70,)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextField textfiled({required IconData icon}) {
    return TextField(decoration: InputDecoration(prefixIcon: Icon(icon)));
  }
}
