import 'package:http/http.dart' as http;
import 'dart:convert';

const purl = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '536542B2-5607-4EF1-92B3-E1EA4655B5D3';

//BTC/USD

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR',
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getCoinData(String crp, String cur) async {
    http.Response response = await http.get('$purl/$crp/$cur?apikey=$apiKey');
    int rate = jsonDecode(response.body)['rate'].toInt();
    return rate;
  }
}
