import 'package:flutter/material.dart';
import 'package:my_app/detail_transaksi.dart';
import 'package:my_app/model/transaksi_model.dart';
class HomeScreen extends StatefulWidget {



  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Transaksi'),
      ),
      body: ListView.builder(
          itemCount: dataTransaksi.length,
          itemBuilder: (context, index){
            final TransaksiModel transaksi = dataTransaksi[index];
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DetailTransaksi(transaksi: transaksi);
                }));
              },
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Text(transaksi.type,
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 12
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text("Rp${transaksi.nominal}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue
                                    ),
                                  ),
                                )
                                ,
                                Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(transaksi.waktu,
                                    style: TextStyle(
                                        fontSize: 10
                                    ),),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 10),
                        child: Text("sumber : ${transaksi.sumber}",
                          style: TextStyle(
                            fontSize: 12
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 10),
                        child: Text("tujuan : ${transaksi.tujuan}",
                          style: TextStyle(
                              fontSize: 12
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

}