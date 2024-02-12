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

  // List to store contacts
  List<Map<String, String>> contacts = [];

  // Controller to clear TextField
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts Screen'),
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
              onPressed: () {
                if (name.isNotEmpty && number.isNotEmpty) {
                  setState(() {
                    contacts.add({'name': name, 'number': number});
                    nameController.clear();
                    numberController.clear();
                  });
                }
              },
              child: Text('Add'),
            ),
            SizedBox(height: 16),
            for (var contact in contacts)
              Visibility(
                visible: contacts.isNotEmpty,
                child: ContactItem(
                  name: contact['name']!,
                  number: contact['number']!,
                  onDelete: () {
                    setState(() {
                      contacts.remove(contact);
                    });
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final String name;
  final String number;
  final VoidCallback onDelete;

  const ContactItem({
    Key? key,
    required this.name,
    required this.number,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$name: $number',
            style: TextStyle(fontSize: 18),
          ),
          IconButton(
            icon: Icon(Icons.delete, color: Colors.red),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}
