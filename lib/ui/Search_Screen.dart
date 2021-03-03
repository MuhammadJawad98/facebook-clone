import 'package:facebook/components/HomeScreenWidgets/IconsStack.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List countries = [
    'Pakistan',
    'China',
    'America',
    'Afganistan',
    'Algeria',
    'Nepal',
    'New york',
    ',Albania',
    'Brazil',
    'Canada',
    'Finland',
    'Iceland',
    'Kuwait',
    'Malta'
  ];
  List filteredCountries = [
    'Pakistan',
    'China',
    'America',
    'Afganistan',
    'Algeria',
    'Nepal',
    'New york',
    'Albania',
    'Brazil',
    'Canada',
    'Finland',
    'Iceland',
    'Kuwait',
    'Malta'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: TextField(
            onChanged: (value) {
              print(value);
              _filterCountries(value);
            },
            decoration: InputDecoration(
              hintText: 'Search here',
              // icon: Icon(Icons.search,color: Colors.black87,),
            )),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: filteredCountries.length > 0
            ? ListView.builder(
                itemCount: filteredCountries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
                      child: Text(
                        filteredCountries[index],
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                })
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }

  void _filterCountries(value) {
    setState(() {
      filteredCountries = countries
          .where(
              (country) => country.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }
}
