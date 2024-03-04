import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 35,
            width: 100,
            child: Image.asset('assets/image/logo.png',color: Colors.black,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_add))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Padding(
      padding: const EdgeInsets.only(right: 20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 37,
                  child: Icon(Icons.account_circle,size: 60,),
              ),
            ),
            Text(
              'Your Story',
              style:
              const TextStyle(fontSize: 14, color: Colors.grey),
            )
          ],
        )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 27,
                  child: Icon(Icons.account_circle,size: 40,),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sanju_tej',
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        )),
                    Text('NIT,PATNA',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        )),
                  ],
                ),
                const Expanded(flex: 1, child: SizedBox()),
                const Icon(Icons.more_vert, color: Colors.black, size: 25),
              ],
            ),
          ),
          Container(
            height: 400,
            alignment: Alignment.center,
            child: Image.asset('assets/image/post1.jpg')
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.favorite_outline, color: Colors.black, size: 25),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.messenger_outline, size: 22, color: Colors.black),
                  SizedBox(width: 15),
                  Icon(Icons.send_outlined, color: Colors.black, size: 22),
                  Expanded(flex: 1, child: SizedBox()),
                  Icon(Icons.save_alt, color: Colors.black, size: 25),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Comments', style: const TextStyle(color: Colors.black, fontSize: 12)),
                Text(
                  'Shubham',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                ),
                Text('Amazing landscape...',
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          )
        ],
      ),
    );
  }
}