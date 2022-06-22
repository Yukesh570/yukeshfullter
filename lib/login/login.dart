import 'package:flutter/material.dart';
import 'package:yukesh/yuk.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  //   void playmusic(int number) {
  //   final player = AudioCache();
  //   player.play('note$number.wav');
  // }

  bool isvisible = true;
  final TextEditingController controller_all = TextEditingController();
  String mytext = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: customtext(
                    hintText: 'email',
                    prefixicon: Icons.email,
                    suffixicon: Icons.reddit,
                  ),
                  width: 370,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: customtext(
                    hintText: 'username',
                    prefixicon: Icons.person,
                    suffixicon: Icons.favorite,
                  ),
                  width: 370,
                ),
              ),
              SizedBox(
                child: TextFormField(
                  controller: controller_all,
                  // validator:
                  obscureText: isvisible,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      hintText: 'password',
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.lock),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isvisible = !isvisible;
                          });
                        },
                        icon: isvisible == true
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      )),
                ),
                width: 370,
              ),
              Container(
                child: ElevatedButton(
                  child: Text('login'),
                  onPressed: () {
                    setState(() {
                      mytext = controller_all.text.toString();
                    });
                    print(controller_all.text);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return yuk();
                        },
                      ),
                    );
                  },
                ),
                alignment: Alignment.center,
              ),
              Container(
                child: Text(mytext),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class customtext extends StatelessWidget {
  //final TextEditingController _controller1;

  final String hintText;
  final IconData prefixicon;
  final IconData suffixicon;

  customtext({
    required this.hintText,
    required this.prefixicon,
    required this.suffixicon,
  });
  final _controller = TextEditingController();
  final _controller1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller1,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.amber)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: hintText,
          suffixIcon: IconButton(
              onPressed: () {
                // print(_controller1.text);
              },
              icon: Icon(prefixicon)),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.reddit),
          )),
    );
  }
}
