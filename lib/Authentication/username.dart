import 'package:flutter/material.dart';
import 'package:instagram_ui/Authentication/password.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var  outlineInputBorder = OutlineInputBorder(borderRadius: BorderRadius.circular(10),
   borderSide: const BorderSide(color: Colors.grey));
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
               Text(
                      'Choose username',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    const SizedBox(height: 10,),
                     Text(
                      'You can always change it later.',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(),
                    ),
                    const SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'username',
                        border: outlineInputBorder,
                        focusedBorder: outlineInputBorder,
                      ),
                    ),
                        const SizedBox(height: 10,),
                        TextButton(
                          style: TextButton.styleFrom(backgroundColor: Colors.blue[100]),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const PasswordScreen(),));
                          },
                         child: Center(
                           child: Text('Next',style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.white),),
                         ))
            ],
          ),
        ),
      ),
    );
  }
}