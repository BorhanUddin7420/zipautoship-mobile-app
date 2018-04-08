import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class OrderList extends StatefulWidget {
  @override
  OrderListState createState() => new OrderListState();
}

class OrderListState extends State<OrderList>{
  final String url = "https://script.googleusercontent.com/macros/echo?user_content_key=BX3H7uQmWaLX0gKXFCExaXQDZdy2X2c9mwnzBsb0uHV99tYO1P8NTjwG_7aOF3yjG8t7F-SIVZ-YQa0Oz1duSebC2v9wtO0pOJmA1Yb3SEsKFZqtv3DaNYcMrmhZHmUMWojr9NvTBuBLhyHCd5hHa1GhPSVukpSQTydEwAEXFXgt_wltjJcH3XHUaaPC1fv5o9XyvOto09QuWI89K6KjOu0SP2F-BdwUdZDmF4UFGxfWuZGEBqzcW8Nd2F9v0-SVpbIzAxn4z5xfHj6r87sEblicy1NCpOdV-ekwfW7zPc_QtoFBJ44qFQ&lib=MnrE7b2I2PjfH799VodkCPiQjIVyBAxva";
  List data;

  @override
  void initState() {
      // TODO: implement initState 
      super.initState();
      this.getJsondata();
    }

    Future<String> getJsondata() async{
      var response = await http.get(
          Uri.encodeFull(url),
          headers: {"Accept":"application/json"}
      );

      print(response.body);

      setState((){
        var convertoDataToJson =JSON.decode(response.body);
        data = convertoDataToJson['json'];
      });

      return "Success";

    }

  @override
  Widget build(BuildContext context) {
      // TODO: implement build
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('All Dispatched Orders'),
        ),
        body: new ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index){
            return new Container(
              child: new Card(
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new ListTile(
                      title: new Text('Order ID'+'# '+data[index]['Order_id']),
                      subtitle: new Text(data[index]['Notes']),
                    ),
                    new Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Text('Pick Up'+': '+data[index]['Pick_Up_Status']),
                          new Text('COi'+':'+data[index]['COI']),
                          new Text('Payment'+':'+data[index]['Paymnet_Status'])
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      );
    }
}