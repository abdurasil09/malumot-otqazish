import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:qq/db_servise.dart';

class dd_page extends StatefulWidget {
  const dd_page({super.key});

  @override
  State<dd_page> createState() => _dd_pageState();
}

class _dd_pageState extends State<dd_page> {
   final TextEditingController _nameController = TextEditingController();
  final TextEditingController _narxController = TextEditingController();
  final TextEditingController _sonController = TextEditingController();
  final TextEditingController _brendController = TextEditingController();
   final TextEditingController _eeController = TextEditingController();
      final TextEditingController _15Controller = TextEditingController();
  String ds = 'Kg';
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body: Center(
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Maxsulot qo’shish",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w900),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom:5 ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width*0.9,
                height: 64,
                child: TextField(
                   controller: _brendController,
                  
                  decoration: InputDecoration(
          
                  hintText: 'Brand nomi:',
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                ),),
              ),
            ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 5),
               child: SizedBox(
                width: MediaQuery.of(context).size.width*0.9,
                height: 64,
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
          
                  hintText: 'Maxsulot nomi:',
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                ),),
                         ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 5,),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SizedBox(
                    width: MediaQuery.of(context).size.width*0.7,
                    height: 64,
                    child: TextField(
                        controller: _sonController,
                        keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        
                      hintText: 'Maxsulot miqdori:',
                      border: OutlineInputBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)))
                    ),),
                             ),
                             Center(
                               child: InkWell(onTap: () {
                                 showDialog(context: context, 
                                 builder:  (context) =>AlertDialog(
                                      title:Text(ds),
                                      actions: [
                                        TextButton(onPressed: () {
                                          ds= 'ta';
                                          Navigator.pop(context);
                                          setState(() {
                                          });
                                        }, child: Text("dona")),
                                      TextButton(onPressed: () {
                                          ds= 'L';
                                          Navigator.pop(context);
                                          setState(() {
                                          });
                                        }, child: Text("Litr")),
                                        TextButton(onPressed: () {
                                          ds= 'Kg';
                                          Navigator.pop(context);
                                          setState(() {
                                          });
                                        }, child: Text("Kilogramm")),
                                        TextButton(onPressed: () {
                                          ds= 'G';
                                          Navigator.pop(context);
                                          setState(() {
                                          });
                                        }, child: Text("Gramm")),
                                      ],
                               ));
                               
                               },
                                 child: Container(
                                  width: MediaQuery.of(context).size.width*0.2,
                                   height: 64,
                                                     decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10)),color: Colors.black),
                                                             child: Center(child: Text(ds,style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500,color: Colors.white),)),
                                 ),
                               ),
                             ),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 5),
               child: SizedBox(
                width: MediaQuery.of(context).size.width*0.9,
                height: 64,
                child: TextField(
                  controller: _eeController,
                  keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                  hintText: 'Tan narxi:',
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                ),),
                         ),
             ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                        width: MediaQuery.of(context).size.width*0.4,
          
                        height: 64,
                        child: TextField(
                          keyboardType: TextInputType.number,
                           controller: _narxController,
                          decoration: InputDecoration(
                          hintText: 'Sotilish narxi:',
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                        ),),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.symmetric(horizontal: 21),
                                   child: Text("yoki",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                                 ),
          
                                 SizedBox(
                        width: MediaQuery.of(context).size.width*0.3,
                        height: 64,
                        
                        child: TextField(
              keyboardType: TextInputType.number,
                          controller: _15Controller,
                          decoration: InputDecoration(
                          hintText: '15%',
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                        ),),
                                 ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(children: [
                  Icon(Icons.check_box,color: Colors.blue,),
                Text("NDS soliq")
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  InkWell(onTap: () {
                     _nameController.clear();
                     _narxController.clear();
                      _sonController.clear();
                      _brendController.clear();
                      _eeController.clear();
                      _15Controller.clear();
                      setState(() {
                      });
                  },
                    child: Container(
                      height: 50,
                        width: MediaQuery.of(context).size.width*0.36,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.black),
                    child: Center(child: Text("Bekor qilish",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),)),
                    ),
                  ),
                  InkWell(onTap: () {
                      final item = Item(
                        name: _nameController.text,
                        narxi: double.parse(_narxController.text),
                        soni: int.parse(_sonController.text),
                        brend: _brendController.text
                      );
                      Hive.box<Item>('itemBox').add(item);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Data Saved')),
                      );
                      _nameController.clear();
                      _narxController.clear();
                      _sonController.clear();
                      _brendController.clear();
                      _eeController.clear();
                      _15Controller.clear();
                  },
                    child: Container(
                      height: 50,
                        width: MediaQuery.of(context).size.width*0.36,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.black),
                    child: Center(child: Text("Saqlash",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),)),
                    ),
                  ),
                ],),
              )
          ],),
        ),
      ),
    );
  }
}