
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart' 
as path_provider;
import 'package:qq/bottom.dart';
import 'package:qq/db_servise.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  await Hive.initFlutter(appDocumentDir.path);
  // Register all necessary Hive adapters
  Hive.registerAdapter(ItemAdapter()); // Register the ItemAdapter
  // Register additional adapters if needed
  await Hive.openBox<Item>('itemBox'); // Open the Hive box for Item
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => DataModel()), // Provide the DataModel
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
