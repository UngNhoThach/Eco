// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';

class DropdownCountryBox extends StatefulWidget {
  final String country;
  ValueSetter<String> callBack;

  DropdownCountryBox(this.country, {Key? key, required this.callBack})
      : super(key: key);

  @override
  _DropdownCountryBoxState createState() => _DropdownCountryBoxState();
}

class _DropdownCountryBoxState extends State<DropdownCountryBox> {
  // global key
  GlobalKey? _globalKey;
  // for position
  double height = 0, width = 0, xPosition = 0, yPosition = 0;
  bool isDropdownOpened = false;
  OverlayEntry? floatingDropdown;

  @override
  void initState() {
    _globalKey = LabeledGlobalKey(widget.country);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        key: _globalKey,
        onTap: () {
          setState(() {
            if (isDropdownOpened) {
              floatingDropdown?.remove();
            } else {
              // position for list items
              findDropdownPosition();
              floatingDropdown = _createFloatingDropdown();
              Overlay.of(context).insert(floatingDropdown!);
            }
            isDropdownOpened = !isDropdownOpened;
          });
        },
        child: _createHeader());
  }

  // position for list items
  void findDropdownPosition() {
    RenderBox? renderBox =
        _globalKey?.currentContext?.findRenderObject() as RenderBox?;
    height = renderBox?.size.height ?? 0;
    width = renderBox?.size.width ?? 0;
    Offset? offset = renderBox?.localToGlobal(Offset.zero);
    xPosition = offset?.dx ?? 0;
    yPosition = offset?.dy ?? 0;
  }

  OverlayEntry _createFloatingDropdown() {
    return OverlayEntry(builder: (context) {
      return Stack(
        children: [
          //For tap outside overlay to dismiss
          Positioned.fill(
              child: GestureDetector(
            onTap: () {
              floatingDropdown?.remove();
              isDropdownOpened = !isDropdownOpened;
            },
            child: Container(
              color: Colors.transparent,
            ),
          )),
          //position of Overlay
          Positioned(
            width: MediaQuery.of(context).size.width,
            top: yPosition + height,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: DropDown(
                itemHeight: height,
                selectedItem: widget.country,
                callBack: (value) => {hideDropdown(), widget.callBack(value)},
              ),
            ),
          ),
        ],
      );
    });
  }

  void hideDropdown() {
    floatingDropdown?.remove();
    isDropdownOpened = !isDropdownOpened;
  }

  Widget _createHeader() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 0.1,
                offset: const Offset(0, 0.1)),
          ],
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Spacer(),
          Text(
            widget.country,
            style: const TextStyle(color: Colors.black, fontSize: 14),
          ),
          const Spacer(),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}

class DropDown extends StatelessWidget {
  // height of the item in list
  final double itemHeight;

  // item selected
  final String selectedItem;

  // call back when selected item
  ValueSetter<String> callBack;

  // list items country
  List<String> dropCountryData = <String>[
    'VietNam',
    'ThaiLan',
    'Campuchia',
    'Indo',
    'Sing',
    'Lao',
    'Japan',
  ];

  DropDown(
      {Key? key,
      required this.itemHeight,
      required this.selectedItem,
      required this.callBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Material(
          color: Colors.grey[300],
          child: Container(
            height: dropCountryData.length * itemHeight + 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 0.1,
                    offset: const Offset(0, 0.1)),
              ],
            ),
            child: Column(
              children: <Widget>[
                DropDownItem(
                    text: dropCountryData[0],
                    isSelected: selectedItem == dropCountryData[0],
                    callBack: callBack,
                    isFirstItem: true),
                // DropDownItem(
                //     text: dropCountryData[0],
                //     isSelected: selectedItem == dropCountryData[0],
                //     callBack: callBack,
                //     isFirstItem: true),
                DropDownItem(
                  text: dropCountryData[1],
                  isSelected: selectedItem == dropCountryData[1],
                  callBack: callBack,
                ),
                DropDownItem(
                  text: dropCountryData[2],
                  isSelected: selectedItem == dropCountryData[2],
                  callBack: callBack,
                ),
                DropDownItem(
                  text: dropCountryData[3],
                  isSelected: selectedItem == dropCountryData[3],
                  callBack: callBack,
                ),
                DropDownItem(
                    text: dropCountryData[4],
                    isSelected: selectedItem == dropCountryData[4],
                    callBack: callBack,
                    isLastItem: true),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DropDownItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  final bool isFirstItem;
  final bool isLastItem;
  ValueSetter<String> callBack;

  DropDownItem(
      {super.key,
      required this.text,
      this.isSelected = false,
      this.isFirstItem = false,
      this.isLastItem = false,
      required this.callBack});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //return value
        callBack(text);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: isSelected ? Colors.amber : Colors.blue,
          // gradient: isSelected
          //     ? Color.fromARGB(255, 218, 112, 104)
          //     :  LinearGradient(colors: [Colors.white, Colors.white]),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
                color: isSelected ? Colors.white : Colors.amber, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
