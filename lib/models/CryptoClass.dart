import 'package:intl/intl.dart';
final oCcy = new NumberFormat("#,##0.00", "en_US");

class CurrencyInfo {
  String name;
  String symbol;
  String price;
  String marketcap;

  CurrencyInfo({this.name, this.symbol, this.price, this.marketcap});

  factory CurrencyInfo.fromJson(dynamic json, int index) {
    double parseMarketCap = json['data'][index]['quote']['USD']['market_cap'];
    double parsePrice = json['data'][index]['quote']['USD']['price'];

    var marketcap = oCcy.format(parseMarketCap);
    var price = oCcy.format(parsePrice);
    
    return CurrencyInfo(
        name: json['data'][index]['name'],
        symbol: json['data'][index]['symbol'],
        price: price,
        marketcap: marketcap);
  }

  String getName() {
    return name;
  }

  String getSymbol() {
    return symbol;
  }

  String getPrice() {
    return price;
  }

  String getMarketCap() {
    return marketcap;
  }
}
