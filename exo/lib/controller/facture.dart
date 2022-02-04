import 'dart:ui';

import 'package:flutter/material.dart';

class Facture extends StatelessWidget {
  const Facture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facture"),
        elevation: 0,
        backgroundColor: Color(0xFFFF0c1979),
      ),
      body: Container(
        child: Column(
          children: [

               Padding(
      padding: const EdgeInsets.only(right: 5, top: 5, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
     Container(
       margin: EdgeInsets.only(left: 4),
       height: MediaQuery.of(context).size.height/5,
       width: MediaQuery.of(context).size.width/2.6,
    
       child:
        Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("Date: 28_01_2022",style: TextStyle(fontSize:12,)),
           Text("FACTURE N°: 00033",style: TextStyle(fontSize:12,)),
           Text("DOSSIER N°: 220018",style: TextStyle(fontSize:12,)),
           Text("DECLAR.N°: C 1021",style: TextStyle(fontSize:12,)),
           Text("CNT MEDUREI847043",style: TextStyle(fontSize:12,)),
           Text("NAVIRE: MSCIPANEMA",style: TextStyle(fontSize:12,)),
           Text("CIRCUIT:",style: TextStyle(fontSize:12,)),
           Text("V.D.",style: TextStyle(fontSize:12,)),
           Text("Contribuable",style: TextStyle(fontSize:12,)),
         ],
       ),
     ),
          Container(
             padding: EdgeInsets.only(),
       height: MediaQuery.of(context).size.height/5,
       width: MediaQuery.of(context).size.width/1.8,
       
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("COMPTE 41123 TYPE facture FPS",style: TextStyle(fontSize:12,)),
           Text("SAPCI",style: TextStyle(fontSize:12,)),
           Text("Abidjan",style: TextStyle(fontSize:12,)),
           Text("Cote d'ivoire",style: TextStyle(fontSize:12,)),
           Text("DESIGNATION: PORK HIND FEET",style: TextStyle(fontSize:12,)),
           Text("CONGELES",style: TextStyle(fontSize:12,)),
           Text("POIDS: 25980  Colis: TC40STC 2503",style: TextStyle(fontSize:12,)),
           Text("CARTONS",style: TextStyle(fontSize:12,)),
            Text("TYPE DOSSIER D3",style: TextStyle(fontSize:12,)),
         ],
       ),
     ),
       
        ],
      ),
    ),
  
  
            // detailFacture("Date: 28_01_2022", "COMPTE 41123 TYPE facture FPS"),
            // detailFacture("FACTURE N°: 00033", "SAPCI"),
            // detailFacture("DOSSIER N°: 220018 ", "Abidjan"),
            // detailFacture("DECLAR.N°: C 1021", "Cote d'ivoire"),
            // detailFacture("CNT MEDUREI847043 ", "DESIGNATION: PORK HIND FEET"),
            // detailFacture("NAVIRE: MSCIPANEMA", "CONGELES"),
            // detailFacture("CIRCUIT:", "POIDS: 25980  Colis: TC40STC 2503"),
            // detailFacture("V.D.", "CARTONS"),
            // detailFacture("Contribuable", "TYPE DOSSIER D3"),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: MediaQuery.of(context).size.width / 5.5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.5, color: Colors.black)),
                    child: Text("CODE"),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: MediaQuery.of(context).size.width / 1.7,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.5, color: Colors.black)),
                    child: Text("DESIGNATION"),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: MediaQuery.of(context).size.width / 5.5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.5, color: Colors.black)),
                    child: Text("MOTANT"),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text("TY"),
                SizedBox(
                  width: 30,
                ),
                Text("TINITZ Yves"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text("TSI"),
                SizedBox(
                  width: 30,
                ),
                Text("TS INSPECTEUR"),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.3,
                ),
                Text("500"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text("AVOIR"),
                SizedBox(
                  width: 30,
                ),
                Text("AVOIR"),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.8,
                ),
                Text("500"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 5,
                ),
                Text("Iro"),
                SizedBox(
                  width: 30,
                ),
                Text("Iro"),
                SizedBox(
                  width: 20,
                ),
                Text("DEBOURD DOUANE"),
                SizedBox(
                  width: 20,
                ),
                Text("20"),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 5,
                ),
                Text("ASS"),
                SizedBox(
                  width: 20,
                ),
                Text("ASSURENCE"),
                SizedBox(
                  width: 20,
                ),
                Text("DEBOURD DIVERS"),
                SizedBox(
                  width: 20,
                ),
                Text("500"),
                SizedBox(
                  width: 10,
                ),
                Text("500"),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 5,
                ),
                Text("OD"),
                SizedBox(
                  width: 20,
                ),
                Text("OUVERT.DOSSIER"),
                SizedBox(
                  width: 20,
                ),
                Text("INTERVENTION"),
                SizedBox(
                  width: 20,
                ),
                Text("200"),
                SizedBox(
                  width: 10,
                ),
                Text("200"),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10,top: 10),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    alignment: Alignment.center,
                    height: 110,
                    width: MediaQuery.of(context).size.width / 3.1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.5, color: Colors.black)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "TVA",
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Montant HT",
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "TOTAL",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "0",
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "17000",
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "17000",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    alignment: Alignment.center,
                    height: 110,
                    width: MediaQuery.of(context).size.width / 3.1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.5, color: Colors.black)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "ASDI",
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Montant HT",
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "TOTAL",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "0",
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "17000",
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "17000",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    height: 110,
                    width: MediaQuery.of(context).size.width / 3.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.5, color: Colors.black)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total HT",
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              "17000",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "T.V.A",
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              "0",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "TOTAL TTC",
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              "17000",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "A.S.D.I",
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              "0",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "NET A PAYER",
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              "17000",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget detailFacture(
    String titre,
    String description,
  ) {
    return 
    Padding(
      padding: const EdgeInsets.only(right: 5, top: 5, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titre,
            style: TextStyle(fontSize: 12),
          ),
          Text(
            description,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  
  
  }
}
