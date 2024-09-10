import 'package:flutter/material.dart';
import 'package:yukesh/home/menu.dart';
import 'package:audioplayers/audioplayers.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  void playmusic(int number) {
  }

  var sweta = Colors.black;

  final TextEditingController _controller1 = TextEditingController();
  final _controller = TextEditingController();
//keeps track of whar user is typing
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context)
            .requestFocus(new FocusNode()); //remove the keyboard display
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Instagram',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.black,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    sweta == Colors.black
                        ? sweta = Colors.red
                        : sweta = Colors.black;
                  });
                },
                icon: Icon(Icons.favorite_outline),
                color: sweta,
              ),
              IconButton(
                onPressed: () {
                  // playmusic(7);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const menu()),
                  );
                },
                icon: Icon(Icons.menu),
                color: Colors.black,
              ),
            ],
            centerTitle: false,
            backgroundColor: Colors.white,
          ),
          backgroundColor: Color.fromARGB(255, 29, 29, 29),
          body: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: Color.fromARGB(255, 225, 225, 47),
                    backgroundImage: AssetImage('assets/maharjan.jpg'),
                  ),
                  Column(
                    children: [
                      Text(
                        ' Maharjan',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.yellow,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                      Text(
                        'Flutter development',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 80,
                    child: Divider(
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(20),
                  //   child: Card(
                  //     child: ListTile(
                  //       leading: Icon(Icons.phone),
                  //       title: Text('Phone.No'),
                  //       subtitle: (Text('9863480429')),
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(20),
                  //   child: Card(
                  //     child: ListTile(
                  //       leading: Icon(Icons.email),
                  //       title: Text('Email'),
                  //       subtitle: (Text('yukesh.maha10@gmail.com')),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    width: 80,
                    child: Divider(
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),
                  netimage(
                      'https://images.wallpapersden.com/image/download/anime-boy-hd_bWdsaGaUmZqaraWkpJRnamtlrWdmbWc.jpg'),

                  netimage(
                      'https://c4.wallpaperflare.com/wallpaper/695/331/660/digital-art-artwork-women-cityscape-wallpaper-preview.jpg'),

                  netimage(
                      'https://c4.wallpaperflare.com/wallpaper/295/163/719/anime-anime-boys-picture-in-picture-kimetsu-no-yaiba-kamado-tanjir%C5%8D-hd-wallpaper-preview.jpg'),

                  netimage(
                      'https://c4.wallpaperflare.com/wallpaper/384/350/430/digital-art-artwork-cyber-cyberpunk-neon-hd-wallpaper-preview.jpg'),
                  netimage(
                      'https://c4.wallpaperflare.com/wallpaper/889/804/14/anime-titans-shingeki-no-kyojin-wallpaper-preview.jpg'),
                  netimage(
                      'https://c4.wallpaperflare.com/wallpaper/761/449/102/spy-x-family-anya-folger-hd-wallpaper-preview.jpg'),

                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 32),
                      child: imagenerator(
                        'assets/yuk.jpeg',
                      )),
                  // Padding(
                  //     padding:
                  //         EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                  //     child: imagenerator(
                  //       'assets/2.jpeg',
                  //     )),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                  //   child: imagenerator(AssetImage('assets/yuk4.jpeg')),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                  //   child: imagenerator(AssetImage('assets/yuk5.JPG')),
                  // ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'What\'s on your mind?',
                          hintStyle: TextStyle(fontFamily: 'Pacifico'),
                          suffixIcon: IconButton(
                            onPressed: _controller.clear,
                            icon: const Icon(Icons.clear),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

class netimage extends StatefulWidget {
  final String imag;

  const netimage(
    this.imag,
  );

  @override
  State<netimage> createState() => _netimageState();
}

class _netimageState extends State<netimage> {
  var yuke = Colors.black;
  var salma = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color.fromARGB(255, 195, 195, 4),
        ),
        height: 450,
        width: 350,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color.fromARGB(255, 35, 35, 35),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(widget.imag),
              ),
            ),
            height: 380,
            width: 330,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          yuke == Colors.black
                              ? yuke = Colors.red
                              : yuke = Colors.black;
                        });
                      },
                      icon: Icon(Icons.favorite),
                      color: yuke,
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            TextField(
                              decoration: InputDecoration(),
                            );
                          });
                        },
                        icon: Icon(Icons.comment)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        salma == Colors.black
                            ? salma = Colors.white
                            : salma = Colors.black;
                      });
                    },
                    icon: Icon(Icons.bookmark),
                    color: salma),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class imagenerator extends StatefulWidget {
  final String images;

  imagenerator(
    this.images,
  );

  @override
  State<imagenerator> createState() => _imageneratorState();
}

class _imageneratorState extends State<imagenerator> {
  var yukes = Colors.black;
  var lasta = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Color.fromARGB(255, 195, 195, 4),
      ),
      height: 450,
      width: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color.fromARGB(255, 35, 35, 35),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(widget.images),
              ),
            ),
            height: 380,
            width: 330,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          yukes == Colors.black
                              ? yukes = Colors.red
                              : yukes = Colors.black;
                        });
                      },
                      icon: Icon(Icons.favorite),
                      color: yukes,
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            TextField(
                              decoration: InputDecoration(),
                            );
                          });
                        },
                        icon: Icon(Icons.comment)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        lasta == Colors.black
                            ? lasta = Colors.white
                            : lasta = Colors.black;
                      });
                    },
                    icon: Icon(Icons.bookmark),
                    color: lasta),
              ],
            ),
            //  urtext(),
            // ListTile(
            //   leading: GestureDetector(
            //       onTap: () {
            //         setState(() {
            //           yukes = Icons.favorite;
            //           color:
            //           Colors.red;
            //           print('object');
            //         });
            //       },
            //       child: Icon(yukes)),
            // ),
          ),
        ],
      ),
    );
  }
}
