// ignore_for_file: avoid_unnecessary_containers, camel_case_types, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

import '../widget/search_widget.dart';

class searchdropdown extends StatefulWidget {
  const searchdropdown({super.key});

  @override
  State<searchdropdown> createState() => _searchdropdownState();
}

class _searchdropdownState extends State<searchdropdown> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        // for hiding keboard
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Search show list item'.toUpperCase()),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: CustomSearchDelegate(),
                    );
                  },
                  icon: Icon(Icons.search))
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [],
                ),
              ),
            ),
          ),
        ));
  }
}
