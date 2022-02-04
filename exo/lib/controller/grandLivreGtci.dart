import 'package:flutter/material.dart';

class GrandLivreGtci extends StatelessWidget {
  const GrandLivreGtci({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grand Livre Gtci"),
        elevation: 0,
        backgroundColor: Color(0xFFFF0c1979),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5, top: 10),
                padding: EdgeInsets.only(left: 5, top: 5),
                width: MediaQuery.of(context).size.width / 3,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Text(
                  "5710000",
                  style: TextStyle(fontSize: 8),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 1, top: 10),
                padding: EdgeInsets.only(left: 5, top: 5),
                width: MediaQuery.of(context).size.width / 1.6,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Text(
                  "CAISSE",
                  style: TextStyle(fontSize: 8),
                ),
              ),
            ],
          ),
   
   
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 1, top: 10, bottom: 5),
                    padding: EdgeInsets.only(left: 5, top: 5),
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Text(
                      "JL",
                      style: TextStyle(fontSize: 8),
                    ),
                  ),
                  Text(
                    "OD",
                    style: TextStyle(fontSize: 8),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 1, top: 10, bottom: 8),
                    padding: EdgeInsets.only(left: 5, top: 5),
                    height: 20,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Text(
                      "Date",
                      style: TextStyle(fontSize: 8),
                    ),
                  ),
                  Text(
                    "22-02-01",
                    style: TextStyle(fontSize: 8),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 1, top: 10, bottom: 8),
                    padding: EdgeInsets.only(left: 5, top: 5),
                    height: 20,
                    width: 38,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Text(
                      "Compte",
                      style: TextStyle(fontSize: 8),
                    ),
                  ),
                  Text(
                    "5211000",
                    style: TextStyle(fontSize: 8),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 1, top: 10, bottom: 8),
                    padding: EdgeInsets.only(left: 5, top: 5),
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Text(
                      "Batch/piece",
                      style: TextStyle(fontSize: 8),
                    ),
                  ),
                  Text(
                    "1/TEST 1",
                    style: TextStyle(fontSize: 8),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 1, top: 10, bottom: 8),
                    padding: EdgeInsets.only(left: 5, top: 5),
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Text(
                      "Libéllé",
                      style: TextStyle(fontSize: 8),
                    ),
                  ),
                  Text(
                    "TEST 1",
                    style: TextStyle(fontSize: 8),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 1, top: 10, bottom: 8),
                    padding: EdgeInsets.only(left: 5, top: 5),
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Text(
                      "Débit",
                      style: TextStyle(fontSize: 8),
                    ),
                  ),
                  Text(
                    "",
                    style: TextStyle(fontSize: 8),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 1, top: 10, bottom: 8),
                    padding: EdgeInsets.only(left: 5, top: 5),
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Text(
                      "Credit",
                      style: TextStyle(fontSize: 8),
                    ),
                  ),
                  Text(
                    "10250",
                    style: TextStyle(fontSize: 8),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 1, top: 10, bottom: 8),
                    padding: EdgeInsets.only(left: 5, top: 5),
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Text(
                      "Solde",
                      style: TextStyle(fontSize: 8),
                    ),
                  ),
                  Text(
                    "10250",
                    style: TextStyle(fontSize: 8),
                  ),
                ],
              ),
            ],
          ),
 
 
 
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5, top: 10),
                padding: EdgeInsets.only(left: 5, top: 5),
                width: MediaQuery.of(context).size.width / 5,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Text(
                  "CUMUL MOIS",
                  style: TextStyle(fontSize: 8),
                ),
              ),
                Padding(
                padding: const EdgeInsets.only(top: 23),
                child: Text(
                  "5710000",
                  style: TextStyle(fontSize: 8),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 29,
                    ),
                    padding: EdgeInsets.only(left: 5, top: 5),
                    width: MediaQuery.of(context).size.width / 10,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                  ),
                ],
              ),
            
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                  top: 10,
                ),
                padding: EdgeInsets.only(left: 5, top: 5),
                width: MediaQuery.of(context).size.width / 4.5,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Text(
                  "0",
                  style: TextStyle(fontSize: 8),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                  top: 10,left: 5
                ),
                padding: EdgeInsets.only(left: 5, top: 5),
                width: MediaQuery.of(context).size.width / 4.5,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Text(
                  "10250",
                  style: TextStyle(fontSize: 8),
                ),
              ),
            ],
          ),
        
        
           Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5, top: 10),
                padding: EdgeInsets.only(left: 5, top: 5),
                width: MediaQuery.of(context).size.width / 3.5,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Text(
                  "CUMUL ANNEE",
                  style: TextStyle(fontSize: 8),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 29,
                ),
                padding: EdgeInsets.only(left: 5, top: 5),
                width: MediaQuery.of(context).size.width / 8,
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 23),
                child: Text(
                  "2022",
                  style: TextStyle(fontSize: 8),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                  top: 10,
                ),
                padding: EdgeInsets.only(left: 5, top: 5),
                width: MediaQuery.of(context).size.width / 6,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Text(
                  "0",
                  style: TextStyle(fontSize: 8),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                  top: 10,left: 5
                ),
                padding: EdgeInsets.only(left: 5, top: 5),
                width: MediaQuery.of(context).size.width / 4.7,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Text(
                  "10250",
                  style: TextStyle(fontSize: 8),
                ),
              ),
            ],
          ),
        
        
             Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5, top: 10),
                padding: EdgeInsets.only(left: 5, top: 5),
                width: MediaQuery.of(context).size.width / 3.8,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Text(
                  "CUMUL COMPTE",
                  style: TextStyle(fontSize: 8),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 29,
                ),
                padding: EdgeInsets.only(left: 5, top: 5),
                width: MediaQuery.of(context).size.width / 6,
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 23),
                child: Text(
                  "2",
                  style: TextStyle(fontSize: 8),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                  top: 10,
                ),
                padding: EdgeInsets.only(left: 5, top: 5),
                width: MediaQuery.of(context).size.width / 4.9,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Text(
                  "0",
                  style: TextStyle(fontSize: 8),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                  top: 10,left: 5
                ),
                padding: EdgeInsets.only(left: 5, top: 5),
                width: MediaQuery.of(context).size.width / 4.9,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Text(
                  "10250",
                  style: TextStyle(fontSize: 8),
                ),
              ),
            ],
          ),
        
        Padding(
          padding: const EdgeInsets.only(left: 145),
          child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5, top: 10),
                  padding: EdgeInsets.only(left: 5, top: 5),
                  width: MediaQuery.of(context).size.width /2.2 ,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: Text(
                    "SOLDE CREDITEUR",
                    style: TextStyle(fontSize: 8),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 1, top: 10),
                  padding: EdgeInsets.only(left: 5, top: 5),
                  width: MediaQuery.of(context).size.width / 8,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: Text(
                    "10250",
                    style: TextStyle(fontSize: 8),
                  ),
                ),
              ],
            ),
        ),
   
        ],
      ),
    );
  }
}
