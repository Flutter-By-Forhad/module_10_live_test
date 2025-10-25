import 'package:flutter/material.dart';



class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactListScreen(),
    );
  }
}

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // TextFormField for Name
            TextFormField(
              decoration: InputDecoration(labelText: 'Hasan',
              border: OutlineInputBorder()),
            ),
            // TextFormField for Phone Number
            SizedBox(height: 10,),

            TextFormField(
              decoration: InputDecoration(labelText: '01745-777777',
              border: OutlineInputBorder()),
            ),
            SizedBox(height: 15,),
            // ElevatedButton for Add
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                minimumSize: Size(double.infinity,40),
              ),
              onPressed: () {},
              child: Text('Add', style: TextStyle(color: Colors.white)),
            ),

            SizedBox(height: 20,),
            // List of Contacts
            Expanded(
              child: ListView(
                children: [
                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Forhad', style: TextStyle(color: Colors.red)),
                      subtitle: Text('01877-777777'),
                      trailing: Icon(Icons.call, color: Colors.blue),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Akib', style: TextStyle(color: Colors.red)),
                      subtitle: Text('01673-777777'),
                      trailing: Icon(Icons.call, color: Colors.blue),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Hasan', style: TextStyle(color: Colors.red)),
                      subtitle: Text('01745-777777'),
                      trailing: Icon(Icons.call, color: Colors.blue),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Rakib', style: TextStyle(color: Colors.red)),
                      subtitle: Text('01745-777777'),
                      trailing: Icon(Icons.call, color: Colors.blue),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Sobuj', style: TextStyle(color: Colors.red)),
                      subtitle: Text('01745-777777'),
                      trailing: Icon(Icons.call, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}