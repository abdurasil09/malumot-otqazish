import 'package:hive/hive.dart';
import 'package:flutter/foundation.dart';

class DataModel extends ChangeNotifier {
  List<Item> _items = [];

  List<Item> get items => _items;

  void addItem(Item item) {
    _items.add(item);
    notifyListeners();
  }
}



@HiveType(typeId: 0)
class Item {
  @HiveField(0)
  String name;

  @HiveField(1)
  double narxi;

  @HiveField(2)
  int soni;

  @HiveField(3)
  String brend;

  Item({
    required this.name,
    required this.narxi,
    required this.soni,
    required this.brend,
  });
}

class ItemAdapter extends TypeAdapter<Item> {
  @override
  final int typeId = 0;

  @override
  Item read(BinaryReader reader) {
    return Item(
      name: reader.readString(),
      narxi: reader.readDouble(),
     soni: reader.readInt(),
      brend: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, Item obj) {
    writer.writeString(obj.name);
    writer.writeDouble(obj.narxi);
    writer.writeInt(obj.soni);
    writer.writeString(obj.brend);
  }
}