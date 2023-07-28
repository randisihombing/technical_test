import 'package:flutter/material.dart';

class MoreMenu extends StatefulWidget {
  const MoreMenu({Key? key}) : super(key: key);

  @override
  State<MoreMenu> createState() => _MoreMenuState();
}

class _MoreMenuState extends State<MoreMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              width: 400,
              height: 800,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Features',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 4,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.grey,
                            child: Column(
                              children: [
                                Image.asset(
                                    'assets/icons/instagram_live.png',
                                  height: 40,
                                  width: 40,
                                ),
                                const Text(
                                    "Live Show",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.black12,
                            child: Column(
                              children: [
                                Image.asset(
                                    'assets/icons/homework.png',
                                  height: 40,
                                  width: 40,
                                ),
                                const Text(
                                    "E-Course",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.black26,
                            child: Column(
                              children: [
                                Image.asset(
                                    'assets/icons/community.png',
                                  height: 40,
                                  width: 40,
                                ),
                                const Text(
                                    "Community",
                                  style: TextStyle(
                                    fontSize: 10,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.black38,
                            child: Column(
                              children: [
                                Image.asset(
                                    'assets/icons/user.png',
                                  height: 40,
                                  width: 40,
                                ),
                                const Text(
                                    "My Profile",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.black45,
                            child: Column(
                              children: [
                                Image.asset(
                                    'assets/icons/recent.png',
                                  height: 40,
                                  width: 40,
                                ),
                                const Text(
                                    "Saved Course",
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.black54,
                            child: Column(
                              children: [
                                Image.asset(
                                    "assets/icons/clipboard.png",
                                  height: 40,
                                  width: 40,
                                ),
                                const Text(
                                    "My List",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.black45,
                            child: Column(
                              children: [
                                Image.asset(
                                    'assets/icons/shopping_cart.png',
                                  height: 40,
                                  width: 40,
                                ),
                                const Text(
                                    "My Cart",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.black12,
                            child: Column(
                              children: [
                                Image.asset(
                                    'assets/icons/clipboard.png',
                                  height: 40,
                                  width: 40,
                                ),
                                const Expanded(
                                  child: Text(
                                      "Purchase History",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 7,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}
