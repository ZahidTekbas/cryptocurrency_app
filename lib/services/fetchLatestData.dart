import 'package:crypto_app/constants/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
Future<Map<String,dynamic>> fetchLatestData() async {
  // SIMPLE NETWORKING TO FETCH DESIRED CONTENT

  var response = await http.get(api_url, headers: {
    'X-CMC_PRO_API_KEY': api_key,
    'start': '1',
    'limit': '5',
    'convert': 'USD'
  });
  print('Response status: ${response.statusCode}');
  return await jsonDecode(response.body);

  // IF YOU WANT TO MAKE DEBUG, JUST RETURN JSON VARIABLE FROM CONSTANTS
  // return json;
}
