import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CryptoPage(),
    );
  }
}

class CryptoPage extends StatefulWidget {
  const CryptoPage({super.key});

  @override
  State<CryptoPage> createState() => _CryptoPageState();
}

class _CryptoPageState extends State<CryptoPage> {
  List cryptoList = [];
  bool isLoading = false;

  Future<void> fetchData() async {
    setState(() => isLoading = true);
    final response = await http.get(
      Uri.parse('https://api.coinlore.net/api/tickers/'),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        cryptoList = data['data'];
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cryptocurrency')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: fetchData,
              child: const Text('Refresh'),
            ),
          ),
          Expanded(
            child: isLoading
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: cryptoList.length,
                    itemBuilder: (context, index) {
                      final coin = cryptoList[index];
                      return Card(
                        color: Colors.yellow[100],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Rank',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey[600])),
                                  Text('${coin['rank']}',
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${coin['name']}',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey[600])),
                                  Text('${coin['symbol']}',
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('USD',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey)),
                                  Text('${coin['price_usd']}',
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}