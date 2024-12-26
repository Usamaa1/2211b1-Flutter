import 'package:firstproject/STLScreenTwo.dart';
import 'package:flutter/material.dart';

class STLScreenOne extends StatelessWidget {
  const STLScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: 
      Column(
        children: [
          ListTile(
            tileColor: Colors.amber,
            textColor: const Color.fromARGB(255, 255, 105, 105),
            leading: CircleAvatar(
              backgroundImage: NetworkImage( "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ),
            title: Text("Name"),
            subtitle: Text("data"),
            trailing: Text("data"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => STLScreenTwo()));
            },
          ),
          ListTile(
            tileColor: Colors.amber,
            textColor: const Color.fromARGB(255, 255, 105, 105),
            leading: CircleAvatar(
              backgroundImage: NetworkImage( "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ),
            title: Text("Name"),
            subtitle: Text("data"),
            trailing: Text("data"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => STLScreenTwo()));
            },
          ),
          ListTile(
            tileColor: Colors.amber,
            textColor: const Color.fromARGB(255, 255, 105, 105),
            leading: CircleAvatar(
              backgroundImage: NetworkImage( "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ),
            title: Text("Name"),
            subtitle: Text("data"),
            trailing: Text("data"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => STLScreenTwo()));
            },
          ),
          ListTile(
            tileColor: Colors.amber,
            textColor: const Color.fromARGB(255, 255, 105, 105),
            leading: CircleAvatar(
              backgroundImage: NetworkImage( "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ),
            title: Text("Name"),
            subtitle: Text("data"),
            trailing: Text("data"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => STLScreenTwo()));
            },
          ),
        ],
      )
          //  TextButton(
          //     onPressed: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => STLScreenTwo()));
          //     },
          //     child: Text("Click"))
          //     IconButton(
          //   onPressed: () {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => STLScreenTwo()));
          //   },
          //   icon: Icon(Icons.import_contacts),
          // )
          //     ElevatedButton.icon(
          //   onPressed: () {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => STLScreenTwo()));
          //   },
          //   label: Text("Cart"),
          //   icon: Icon(
          //     Icons.shop,
          //     size: 14,
          //     color: Colors.amber,
          //   ),
          // )
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => STLScreenTwo()));
          //   },
          //   child: CircleAvatar(
          //     backgroundImage: NetworkImage(
          //         "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          //   ),
          // )
          //     InkWell(
          //   child: Text("Link to another screen",style: TextStyle(color: Colors.orange),),
          //   onTap: () {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => STLScreenTwo()));
          //   },
          // )

          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushReplacement(context,
          //         MaterialPageRoute(builder: (context) => STLScreenTwo()));
          //   },
          //   style: ElevatedButton.styleFrom(
          //       foregroundColor: Color.fromARGB(255, 255, 255, 255),
          //       backgroundColor: Color.fromARGB(255, 60, 60, 255)),
          //   // ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amberAccent))
          //   child: Text("Click Meeeeee"),
          // ),
          ),
    );
  }
}
