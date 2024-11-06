import 'package:flutter/material.dart';
import 'package:invoice_app/details_page.dart';
import 'package:invoice_app/main.dart';

class InvoicesList extends StatelessWidget {
  const InvoicesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('All Customers'),
      ),
      body: ListView.builder(
        itemCount: InvoiceApp.invoices.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(selectedIndex: index),
                  ));
            },
            tileColor: Colors.blue[100],
            leading: Text(
              InvoiceApp.invoices[index].name,
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
