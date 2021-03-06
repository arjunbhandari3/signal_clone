import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_clone/src/controllers/country_controller.dart';
import 'package:signal_clone/src/models/country_model.dart';
import 'package:signal_clone/src/views/register_view.dart';

class CountryView extends StatefulWidget {
  @override
  _CountryViewState createState() => _CountryViewState();
}

class _CountryViewState extends State<CountryView> {
  List results = [];
  Country country = Country();
  var rows = [];
  var rowsdialogcode = [];
  String query = '';
  late TextEditingController tc;
  var controller = Get.put(CountryController());

  @override
  void initState() {
    super.initState();
    tc = TextEditingController();
    rows = country.countrylist;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          "Country List",
          style: new TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: tc,
                    decoration: InputDecoration(
                      hintText: 'Search Country',
                      prefixIcon: Icon(Icons.search),
                    ),
                    onChanged: (v) {
                      setState(() {
                        query = v;
                        setResults(query);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: query.isEmpty
                      ? ListView.builder(
                          shrinkWrap: true,
                          itemCount: rows.length,
                          itemBuilder: (con, ind) {
                            return ListTile(
                              title: Text(rows[ind]['name']),
                              onTap: () {
                                setState(() {
                                  tc.text = rows[ind]['name'];
                                  query = rows[ind]['name'];
                                  controller!.choosevalue(
                                      tc.text, rows[ind]['dial_code']);

                                  setResults(query);
                                  Get.off(RegisterView());
                                });
                              },
                            );
                          },
                        )
                      : ListView.builder(
                          shrinkWrap: true,
                          itemCount: results.length,
                          itemBuilder: (con, ind) {
                            return ListTile(
                              title: Text(results[ind]['name']),
                              onTap: () {
                                setState(() {
                                  tc.text = results[ind]['name'];
                                  query = results[ind]['name'];
                                  controller!.choosevalue(
                                      tc.text, results[ind]['dial_code']);
                                  setResults(query);
                                  Get.off(RegisterView());
                                });
                              },
                            );
                          },
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void setResults(String query) {
    results = rows
        .where((elem) =>
            elem['name'].toString().toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
