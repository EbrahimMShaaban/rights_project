import 'package:flutter/material.dart';
import 'package:rights_project/screens/admin_sceen/users_screen/user_details.dart';
import 'package:rights_project/style.dart';
import 'package:rights_project/widgets/login_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: brown,
        title: const Text('Find a lawyer'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(delegate: CustomSearchDelegate(), context: context);
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Apple',
    'Banana',
    'Pear',
    'Watermelons',
    'Oranges',
    'Blueberries',
    'Strawberries',
    'Raspberries',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ), // IconButton
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    ); // IconButton
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return Padding(
          padding: EdgeInsets.all(10),
          child: Loginbuton(
              ontab: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Userdetails()));
              },
              txt: result,
              color: const Color(0xffd1aa5f)),
        ); // ListTile
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return Padding(
          padding: EdgeInsets.all(10),
          child: Loginbuton(
              ontab: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Userdetails()));
              },
              txt: result,
              color: const Color(0xffd1aa5f)),
        ); // ListTile
      },
    );
    // TODO: implement buildSuggestions
  }
}
