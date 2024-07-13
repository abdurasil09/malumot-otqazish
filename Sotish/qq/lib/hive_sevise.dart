import 'package:hive/hive.dart';

class HiveService {
  static final Box box = Hive.box('myBox');

  static void saveData(String data) {
    box.put('data', data);
  }

  static String getData() {
    return box.get('data', defaultValue: 'No Data Saved');
  }
}