import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Dashboard2 extends StatefulWidget {
  const Dashboard2({Key? key}) : super(key: key);

  @override
  _Dashboard2State createState() => _Dashboard2State();
}
class _Dashboard2State extends State<Dashboard2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Expanded(child:Text("USER DASHBOARD",
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(' '),
                GestureDetector(
                  onTap: () {
                    //logout();
                  },
                  child: const Text('Logout',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                )
              ],
            ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(49, 87, 110, 1.0),

      ),
      body: Container(
        padding: const EdgeInsets.all(7),

        child: Column(
            children: [
              CarouselSlider(
                items: [
                  //1st Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('assets/welcome.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('assets/welcome.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('assets/welcome.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //4th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('assets/welcome.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //5th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('assets/welcome.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: 190.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
              const SizedBox(height: 11),
              ]//<------
        ),

      ),

      drawer: Drawer(
        child: ListView(
          // Remove padding
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName:  Text('nn'),
              accountEmail:  Text('ll'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    "https://protocoderspoint.com/wp-content/uploads/2019/10/mypic-300x300.jpg",
                    //"https://protocoderspoint.com/wp-content/uploads/2019/10/mypic-300x300.jpg",

                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        'assets/cow.jpg')
                ),
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Dashboard'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Dashboard2()));
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text('livestock Registration'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Dashboard2()));
              },
            ),
            const Divider(),

            ListTile(
              leading: const Icon(Icons.pets_sharp),
              title: const Text('Detailed Livestock Record'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Dashboard2()));
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.whatsapp),
              title: const Text('Report Animal'),
              onTap: () {

              },
            ),
            const Divider(),

          ],
        ),
      ),
    );
  }
}
