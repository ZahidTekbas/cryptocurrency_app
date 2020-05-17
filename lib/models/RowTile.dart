import 'package:crypto_app/constants/constants.dart';
import 'package:flutter/material.dart';

class RowTile extends StatelessWidget {
  RowTile(
      {this.name,
      this.symbol,
      this.price,
      this.marketcap,
      this.style,
      this.index});
  final String name;
  final String symbol;
  final String price;
  final String marketcap;
  final TextStyle style;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
            flex: 1,
            child: (() {
              if(name == 'Kripto Para'){
                return SizedBox(height: 5, width: 5);
              }
              else{
                return Text('${index+1}',style: smallTextStyle);
              }
            }())),
        Expanded(
            flex: 5,
            child: Container(
              child: Text(
                '$name',
                style: style,
              ),
            )),
        Padding(padding: EdgeInsets.all(4.0)),
        Expanded(
            flex: 5,
            child: Container(
              child: Text(
                '$symbol',
                style: style,
              ),
            )),
        Padding(padding: EdgeInsets.all(6.0),),
        Expanded(
            flex: 5,
            child: Container(
              child: Text(
                '$price',
                style: style,
              ),
            )),
        Padding(padding: EdgeInsets.all(2.0)),
        Expanded(
          flex: 11,
          child: Container(
            child: Text(
              '$marketcap',
              style: style,
            ),
          ),
        ),
      ],
    );
  }
}
