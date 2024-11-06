import 'package:flutter/material.dart';
import 'package:invoice_app/main.dart';

class DetailsPage extends StatelessWidget {
  final int selectedIndex;
  const DetailsPage({required this.selectedIndex, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(InvoiceApp.invoices[selectedIndex].name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Invoice No: ${InvoiceApp.invoices[selectedIndex].id}',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            'Products:',
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
          Text(
            InvoiceApp.invoices[selectedIndex].toString(),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
