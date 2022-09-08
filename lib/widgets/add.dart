import 'package:flutter/material.dart';

class Widget1 extends StatefulWidget {
  const Widget1({Key? key}) : super(key: key);

  @override
  _Widget1State createState() => _Widget1State();
}

class _Widget1State extends State<Widget1> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(




    );
  }
}
Card buildCard1() {

  var heading = 'Anonymous';
  var subheading =
      'Mother. 1 Min ago';

  return Card(
      elevation: 2.5,

      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(backgroundImage: AssetImage('assets/no-image.png'),),


            title: Row(
                children:  <Widget>[
                  Text(heading,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.0,
                      // height: 5.5, //You can set your custom height here
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Image.asset('assets/badge1.jpg',
                    height: 28,
                    width: 20,
                    fit: BoxFit.fitWidth,),
                ]
            ),
            subtitle: Text(subheading,
              style: const TextStyle(
                fontSize: 13.0,
                //height: 3.5, //You can set your custom height here
                color: Colors.grey,
              ),
            ),

            trailing: const Icon(Icons.more_vert),
          ),
          const Divider(
            thickness: 0.5, // thickness of the line
            indent: 0, // empty space to the leading edge of divider.
            endIndent: 0, // empty space to the trailing edge of the divider.
            color: Colors.grey, // The color to use when painting the line.
            height: 25, // The divider's height extent.
          ),

          Container(
            height: 20.0,
            padding: const EdgeInsets.fromLTRB(13.0,2.0,2.0,2.0),
            alignment: Alignment.topLeft,
            child: const Text('My baby is struggling to Poop',
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w600,
                //height: 3.5, //You can set your custom height here
                color: Colors.black,

              ),
            ),

          ),
          Container(
            padding: const EdgeInsets.all(13.0),
            alignment: Alignment.centerLeft,
            child: const Text('My Almost 3 weeks old baby struggles to '
                'poop.Her face turns red, stomach becomes so hard and she cries too. what can i do pls',
              style: TextStyle(
                fontSize: 14.0,
                // fontWeight: FontWeight.w600,
                height: 1.4, //You can set your custom height here
                color: Colors.black,

              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.loyalty),
                label: const Text("Stooling"),
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    textStyle: const TextStyle(
                        fontSize: 10)
                ),
              )
          ),

          ButtonBar(
            //alignment: MainAxisAlignment.center,
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding:const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 22
            ),
            mainAxisSize: MainAxisSize.max,
            children: [
              TextButton.icon(
                icon: const Icon( Icons.thumb_up_outlined,color: Colors.black, size: 14,),
                label: const Text('1250',
                    style: TextStyle(fontSize: 10,
                        color: Colors.black)
                ),
                onPressed: () => {},
              ),
              // const SizedBox(width: 100),
              TextButton.icon(
                icon: const Icon( Icons.mode_comment_outlined,color: Colors.black, size: 14,),
                label: const Text('2',
                    style: TextStyle(fontSize: 10,
                        color: Colors.black)
                ),
                onPressed: () => {},
              ),
              // const SizedBox(width: 100),
              TextButton.icon(
                icon: const Icon( Icons.file_upload_outlined,color: Colors.black, size: 14,),
                label: const Text('Share',
                    style: TextStyle(fontSize: 10,
                        color: Colors.black)
                ),
                onPressed: () => {},
              ),
            ],
          )
        ],
      )
  );
}