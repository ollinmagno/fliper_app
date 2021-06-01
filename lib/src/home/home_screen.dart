import 'package:fliper_app/src/components/text_home.dart';
import 'package:fliper_app/src/model/digital_wallet.dart';
import 'package:fliper_app/src/repository/home_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeRepository _homeRepository;
  
  @override
  void initState() {
    _homeRepository = new HomeRepository();
    super.initState();
  }

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
                              fontSize: 25,
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
                      child: TextHome("Valor investido"),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: FutureBuilder<DigitalWallet>(
                          future: _homeRepository.getData(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              final format = NumberFormat("#,##0.00", "pt_BR");
                              var total = format.format(snapshot.data.data.wealthSummary[0].total);
                              return Text(
                                "R\$ $total",
                                style: TextStyle(
                                    color: Color(0xff3b5cb8),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              );
                            } else {
                              return CircularProgressIndicator();
                            }
                          }),
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
                                TextHome("Rentabilidade/mês"),
                                FutureBuilder<DigitalWallet>(
                                    future: _homeRepository.getData(),
                                    builder: (context, snapshot) {
                                      if (snapshot.hasData) {
                                        return TextHome(
                                          "${snapshot.data.data.wealthSummary[0].profitability.toStringAsFixed(3)}%",
                                        );
                                      } else {
                                        return CircularProgressIndicator();
                                      }
                                    }),
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
                                TextHome(
                                  "CDI",
                                ),
                                FutureBuilder<DigitalWallet>(
                                    future: _homeRepository.getData(),
                                    builder: (context, snapshot) {
                                      if (snapshot.hasData) {
                                        return TextHome(
                                          "${snapshot.data.data.wealthSummary[0].cdi.toStringAsFixed(2)}%",
                                        );
                                      } else {
                                        return CircularProgressIndicator();
                                      }
                                    }),
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
                                TextHome(
                                  "Ganho/mês",
                                ),
                                FutureBuilder<DigitalWallet>(
                                    future: _homeRepository.getData(),
                                    builder: (context, snapshot) {
                                      if (snapshot.hasData) {
                                        return TextHome(
                                          "R\$${snapshot.data.data.wealthSummary[0].gain}",
                                        );
                                      } else {
                                        return CircularProgressIndicator();
                                      }
                                    }),
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
