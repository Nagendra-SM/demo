import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'searchPage.dart';

class FilterChipDisplay extends StatefulWidget {
  @override
  _FilterChipDisplayState createState() => _FilterChipDisplayState();
}

class _FilterChipDisplayState extends State<FilterChipDisplay> {
  RangeValues _currentRangeValues = const RangeValues(5, 20);
  double _value = 6;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: unnecessary_new
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.times,
              color: Color.fromARGB(255, 11, 228, 18),
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          "Filter Searches",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _titleContainer("Choose Category"),
            ),
          ),
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  child: Wrap(
                spacing: 11.0,
                runSpacing: 3.0,
                children: <Widget>[
                  filterChipWidget(chipName: 'Break-fast'),
                  filterChipWidget(chipName: 'Lunch'),
                  filterChipWidget(chipName: 'Dinner'),
                  // filterChipWidget(chipName: 'Brunch'),
                  filterChipWidget(chipName: 'Dessert'),
                ],
              )),
            ),
          ),
          SizedBox(height: 15),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _titleContainer('Cooking Time'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    Slider(
                        value: _value,
                        min: 0,
                        max: 100,
                        divisions: 5,
                        label: _value.round().toString(),
                        activeColor: Color.fromARGB(255, 37, 229, 24),
                        inactiveColor: Color.fromARGB(55, 46, 240, 32),
                        thumbColor: Color.fromARGB(255, 4, 247, 154),
                        onChanged: (double value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _titleContainer('Calories / Meal'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    RangeSlider(
                      values: _currentRangeValues,
                      min: 0,
                      max: 60,
                      divisions: 5,
                      activeColor: Color.fromARGB(255, 37, 229, 24),
                      inactiveColor: Color.fromARGB(55, 46, 240, 32),
                      labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _titleContainer('Additional Preferences'),
            ),
          ),
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(left: 7.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Wrap(
                  spacing: 15.0,
                  runSpacing: 10.0,
                  children: <Widget>[
                    filterChipWidget(chipName: 'Eggs'),
                    filterChipWidget(chipName: 'Fruits'),
                    filterChipWidget(chipName: 'Fish'),
                    filterChipWidget(chipName: 'Chiken'),
                    filterChipWidget(chipName: 'Beans'),
                    filterChipWidget(chipName: 'Vegetables'),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            height: 45,
            thickness: 1.2,
            color: Color.fromARGB(255, 205, 198, 198),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: new Column(
              children: <Widget>[
                Text(
                  '1212',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 6),
                Text(
                  'Matches Found',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 98, 244, 54),
                      padding: const EdgeInsets.fromLTRB(30, 13, 30, 13)),
                  child: Text('SEARCH',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _titleContainer(String myTitle) {
  return Text(
    myTitle,
    style: TextStyle(
        color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
  );
}

class filterChipWidget extends StatefulWidget {
  final String chipName;

  filterChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName),
      labelStyle: TextStyle(
          color: Color.fromARGB(255, 132, 127, 138),
          fontSize: 18.0,
          fontWeight: FontWeight.bold),
      labelPadding: EdgeInsets.all(6),
      selected: _isSelected,
      checkmarkColor: Color.fromARGB(255, 254, 254, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Color.fromARGB(141, 29, 252, 62),
    );
  }
}
