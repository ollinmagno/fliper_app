import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                    left: 26.0, right: 26.0, top: 22.0, bottom: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Seu resumo",
                          style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff3b5cb8),
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          alignment: Alignment.centerRight,                          
                          icon: Icon(Icons.more_vert),
                          color: Colors.grey.shade400,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Center(
                      child: Text("Valor investido",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Text(
                        "R\$ 3.000.000,00",
                        style: TextStyle(
                            color: Color(0xff3b5cb8),
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rentabilidade/mês",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "2,767%",
                                  style: TextStyle(
                                      color: Color(0xff3b5cb8),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "CDI",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "3,45%",
                                  style: TextStyle(
                                      color: Color(0xff3b5cb8),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Ganho/mês",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$ 1833,23",
                                  style: TextStyle(
                                      color: Color(0xff3b5cb8),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Spacer(),
                        ButtonTheme(
                          child: ButtonBar(
                            children: <Widget>[
                              Container(
                                height: 35,
                                width: 110,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff3b5cb8),
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: const Text(
                                    'VER MAIS',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Color(0xff3b5cb8)),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
