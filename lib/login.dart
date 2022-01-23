import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key,required this.logIn}) : super(key: key);

  final Function logIn;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _usernameCon=TextEditingController();
  final TextEditingController _passwordCon=TextEditingController();

  bool hidePassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            const SizedBox(height: 80.0),
            Column(
              children: [
                SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset('asset/diamond.png')
                ),
                const Divider(),
                const Text('SHRINE',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600,color: Colors.blueGrey),),
                const Divider(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _usernameCon,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person,),
                  hintText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _passwordCon,
                obscureText: hidePassword,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  suffixIcon: GestureDetector(
                    child: hidePassword?Icon(Icons.visibility_off):Icon(Icons.visibility),
                    onTap: (){setState(() {hidePassword=!hidePassword;});},
                  )
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: (){
                        widget.logIn();
                      },
                      child: const Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text('Login'),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                      onPressed: (){
                        _usernameCon.clear();
                        _passwordCon.clear();
                      },
                      child: const Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('Cancel'),
                      )
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
