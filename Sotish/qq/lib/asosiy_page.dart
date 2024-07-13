
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:qq/db_servise.dart';

class asosiy_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ValueListenableBuilder<Box<Item>>(
        valueListenable: Hive.box<Item>('itemBox').listenable(),
        builder: (context, box, _) {
          List<Item> items = box.values.toList();
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              Item item = items[index];
              return ListTile(
                title: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(item.name),
                    ),
                    Text(item.brend),
                  ],
                ),
                subtitle: Column(
                  children: [
                    Text(
                        'Narxi: ${item.narxi},           Soni: ${item.soni}'),
                   Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 1,
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                    )
                  ],
                ),
                    
              );
            },
          );
        },
      ),
    );
  }
}
