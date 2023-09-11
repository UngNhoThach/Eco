// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_const_constructors, sized_box_for_whitespace

import 'package:eco/Model/person_model.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<perSon> person = [
    perSon(
        image: "imageUrl",
        path: "path",
        active: "active",
        name: "inactive",
        details: "my name is"),
    perSon(
        image: "imageUrl2",
        path: "path2",
        active: "active2",
        name: "inactive2",
        details: "my name is"),
    perSon(
        image: "imageUrl2",
        path: "path2",
        active: "active2",
        name: "inactive3",
        details: "my name is"),
    perSon(
        image: "imageUrl2",
        path: "path2",
        active: "active2",
        name: "inactive4",
        details: "my name is"),
  ];
  List<perSon> result = [];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<perSon> matchQuery = [];
    for (var fruit in person) {
      if (fruit.name!.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        // result = matchQuery[index];
        return Container(
          height: size.height / 10,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  width: 1.5, color: Color.fromRGBO(224, 224, 224, 1)),
            ),
          ),
          child: ListTile(
            leading: SizedBox(
              height: size.height * 0.08,
              width: size.height * 0.08,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  CircleAvatar(backgroundImage: NetworkImage('')),
                  // user online or offline
                ],
              ),
            ),
            title: Text('${matchQuery[index].name}'),
            subtitle: Text('${matchQuery[index].details}'),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<perSon> matchQuery = [];
    for (var fruit in person) {
      if (fruit.name!.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        return Container(
          height: size.height / 10,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  width: 1.5, color: Color.fromRGBO(224, 224, 224, 1)),
            ),
          ),
          child: ListTile(
            leading: SizedBox(
              height: size.height * 0.08,
              width: size.height * 0.08,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  CircleAvatar(backgroundImage: NetworkImage('')),
                  // user online or offline
                ],
              ),
            ),
            title: Text('${matchQuery[index].name}'),
            subtitle: Text('${matchQuery[index].details}'),
          ),
        );
      },
    );
  }
}
