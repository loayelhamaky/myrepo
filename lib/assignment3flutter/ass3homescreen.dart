import 'package:flutter/material.dart';

void main() {
  runApp(ContactApp());
}

class ContactApp extends StatelessWidget {
  static String routeHomeName = 'home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ContactApp.routeHomeName: (_) => ContactAppHomescreen(),
      },
      initialRoute: ContactApp.routeHomeName,
    );
  }
}

class ContactAppHomescreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContactAppHomescreenState();
  }
}

class ContactAppHomescreenState extends State<ContactAppHomescreen> {
  String name = '';
  String number = '';
  List<Map<String, String>> contacts = [];
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Contacts Screen')),
      ),
      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Name Here',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                        suffixIcon: Icon(Icons.edit),
                      ),
                      onChanged: (value) {
                        name = value;
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: TextField(
                      controller: numberController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Number Here',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                        suffixIcon: Icon(Icons.call),
                      ),
                      onChanged: (value) {
                        number = value;
                      },
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: contacts.length == 3
                  ? null
                  : () {
                setState(() {
                  contacts.add({'name': name, 'number': number});
                  nameController.clear();
                  numberController.clear();
                });
              },
              child: Text('Add'),
            ),
            Visibility(
              visible: contacts.isNotEmpty,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    contacts.removeLast();
                  });
                },
                child: Text('Delete'),
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.red),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: contacts.length > 0 ? Text('${contacts[0]}')
                        : SizedBox(), // You can replace SizedBox() with any other widget or null
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: contacts.length >1 ? Text('${contacts[1]}')
                        : SizedBox(), // You can replace SizedBox() with any other widget or null
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: contacts.length >2 ? Text('${contacts[2]}')
                        : SizedBox(), // You can replace SizedBox() with any other widget or null
                  )

                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
