import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Row(
        children: [
          SizedBox(child: productCard()),
          productCard(),
        ],
      ),
    );
  }

  Widget productCard() {
    return Card(
      child: Column(
        children: [
          Container(height: 100, color: Colors.blue),
          Text(
            'Name of product',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Price: 100", style: TextStyle(color: Colors.red)),
              Text("Discount: 10%"),
            ],
          ),
        ],
      ),
    );
  }
}

