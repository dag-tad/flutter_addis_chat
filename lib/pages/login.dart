import 'package:flutter/material.dart';
import 'package:flutter_chat_addis/pages/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      child: SizedBox(
            height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Spacer(),
              const Text(
                'Hello, welcome back!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )
                ),
              const SizedBox(
                height: 16,),
              const Text(
                'Login to continue',
                style: TextStyle(
                  color: Colors.white
                ),
                ),
              const Spacer(),
              TextField(
                decoration: InputDecoration(
                    hintText: 'User Name',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12)
                      )
                    )
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12)
                    )
                  )
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: (){}, 
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white
                  ),
                  child: const Text('Forget password'),),
              ),
              SizedBox(
                height: 32,
              ),
             SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed('/home');
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                ),
                child: const Text('Log in'),
              ),
             ),
            const Spacer(),
            const Text('Or sign in with'),
            const SizedBox(height: 16,),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50),),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset(
                      'assets/images/google.png',
                      width: 22,
                      height: 22,),
                    const SizedBox(
                      width: 8
                    ),
                    const Text('Login with Google'),
                  ],)),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      )
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset(
                      'assets/images/facebook.png', 
                      width: 22,
                      height: 22
                    ),
                    const SizedBox(width: 8,),
                    const Text('Login with Facebook'),
                  ],),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Text("Don't have account"),
                TextButton(
                  onPressed: (){}, 
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.amber,
                  ),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      decoration: TextDecoration.underline
                    )
                    ),),
              ],),
              const Spacer(),
          ],),
        ),
      ),
    ),
  );
  }
}