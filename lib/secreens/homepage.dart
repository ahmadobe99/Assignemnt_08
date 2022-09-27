import 'package:flutter/material.dart';

import 'package:myapp/secreens/loginpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Welcome to our shop"),
            bottom: TabBar(tabs: [
              IconButton(onPressed: (() {}), icon: Icon(Icons.watch)),
              IconButton(onPressed: (() {}), icon: Icon(Icons.headphones)),
            ]),
          ),
          floatingActionButton: Builder(builder: ((context) {
            return FloatingActionButton(
              onPressed: (() {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return loginpage();
                })));
              }),
            );
          })),
          body: TabBarView(children: [
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: [
                    Image(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/OIP.mju5ttqrFw7Y_18FN4mfrwHaEN?pid=ImgDet&rs=1")),
                    ListTile(
                      title: Text("Apple Watch Series 6"),
                      subtitle: Text("Price 250 dollors"),
                      leading: Icon(Icons.add),
                    ),
                    Image(
                        image: NetworkImage(
                            "https://gadgetpilipinas.net/wp-content/uploads/2020/09/Huawei-Watch-GT-2-Pro-and-Fit-1.png")),
                    ListTile(
                      title: Text("Huawei 2 GT Watch"),
                      subtitle: Text("Price 220 dollors"),
                      leading: Icon(Icons.add),
                    ),
                    Image(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/OIP.h2fcqxxJKwM8C1C5TP7mBwHaHa?pid=ImgDet&rs=1")),
                    ListTile(
                      title: Text("Casio G-Shock"),
                      subtitle: Text("Price 220 dollors"),
                      leading: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: [
                    Image(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/R.73fcc0a57cd29fe34db27bf466ff6fb9?rik=%2bioj0Jg5%2ffig2w&pid=ImgRaw&r=0")),
                    ListTile(
                      title: Text("Apple AirPods 2nd Generation"),
                      subtitle: Text("Price 220 dollors"),
                      leading: Icon(Icons.add),
                    ),
                    Image(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/R.86563e0fa4e54ade2ca222193273a0f9?rik=82Sc%2b%2bzK5Hlahg&pid=ImgRaw&r=0")),
                    ListTile(
                      title: Text("Huawei AirPods Pro 5"),
                      subtitle: Text("Price 190 dollors"),
                      leading: Icon(Icons.add),
                    ),
                    Image(
                        image: NetworkImage(
                            "https://www.bhphotovideo.com/images/images2500x2500/sony_mdrhw300k_2_4ghz_digital_wireless_1037543.jpg")),
                    ListTile(
                      title: Text("Sony MDR-HW300K Wireless"),
                      subtitle: Text("Price 100 dollors"),
                      leading: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ));
  }
}
