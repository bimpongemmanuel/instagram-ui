import 'package:flutter/material.dart';
import 'package:instagram_ui/Authentication/username.dart';
import 'package:instagram_ui/navigationbar/navigationbar.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.grey));
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://logos-download.com/wp-content/uploads/2016/03/Instagram_Logo_2016.png',
              width: 150,
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Phone number,email or username',
                  border: outlineInputBorder,
                  focusedBorder: outlineInputBorder),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              scrollPadding: const EdgeInsets.all(10),
              decoration: InputDecoration(
                hintText: 'Password',
                border: outlineInputBorder,
                focusedBorder: outlineInputBorder,
                suffixIcon: const Icon(Icons.remove_red_eye_rounded),
              ),
            ),
            const SizedBox(
              height: 10,  
            ),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child: Center(
                    child: Text(
                  'Log in',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.white),
                ))),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forgot your login details?',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Get help logging in',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Expanded(
                    child: Divider(
                  thickness: 2,
                )),
                SizedBox(
                  width: 10,
                ),
                Text('or'),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Divider(
                  thickness: 2,
                )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage('images/Facebook.png'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('Continue with facebook',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.white))
                  ],
                )),
            Container(
              height: 150,
            ),
            const SizedBox(
              height: 150,
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                    child: Text(
                  'Sign up',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen(),));
                },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
