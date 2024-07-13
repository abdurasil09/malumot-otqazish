import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 50,bottom: 20),
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),color: Colors.black),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Bugungi kirim",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("3.000.000",style: TextStyle(fontSize: 38,fontWeight: FontWeight.w700,color: Colors.white),),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("UZS",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white),),
                        ),
                      ],
                    )
                  ],),
                ),
              ),
            ),
          ),
           Container(
              height: 150,
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),color: Colors.black),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Bugungi FOYDA",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("500.000",style: TextStyle(fontSize: 38,fontWeight: FontWeight.w700,color: Colors.white),),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("UZS",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white),),
                        ),
                      ],
                    )
                  ],),
                ),
              ),
            ),
        ],),
      ),
    );
  }
}