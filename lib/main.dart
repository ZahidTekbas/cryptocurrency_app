import 'package:crypto_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'services/fetchLatestData.dart';
import 'models/RowTile.dart';
import 'models/CryptoClass.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: MyHomePage(title: 'CryptoCurrency App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RowTile(
            name: 'Kripto Para',
            symbol: 'Sembol',
            price: 'Fiyat \$',
            marketcap: 'Market Değeri \$',
            style: titleTextStyle,
          ),
          Container(
            height: 5,
            width: MediaQuery.of(context).size.width,
            color: Colors.white30,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: FutureBuilder(
                    builder:
                        (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: 100,
                            itemBuilder: (BuildContext context, int index) {
                              var info =
                                  CurrencyInfo.fromJson(snapshot.data, index);
                              return Column(
                                children: <Widget>[
                                  RowTile(
                                      name: info.name,
                                      symbol: info.symbol,
                                      price: info.price,
                                      marketcap: info.marketcap,
                                      style: mediumTextStyle,
                                      index: index),
                                  Container(
                                    height: 5,
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.white10,
                                  ),
                                ],
                              );
                            });
                      }
                      if (snapshot.hasError) {
                        return Center(
                            child: Container(
                                height: 250,
                                width: 250.0,
                                child: Text('${snapshot.error}')));
                      } else {
                        return Center(
                          child: Container(
                            height: 100,
                            width: 100,
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                    },
                    future: fetchLatestData()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
