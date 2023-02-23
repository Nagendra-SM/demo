import 'package:flutter/material.dart';
// import 'package:battery_indicator/battery_indicator.dart';
import 'FilterChipDisplay.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: searchPage(),
  ));
}

class searchPage extends StatefulWidget {
  const searchPage({Key? key}) : super(key: key);

  @override
  _searchPageState createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  TextEditingController firstname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: size.height,
        width: size.width,
        child: Stack(children: [
          Container(
            padding: const EdgeInsets.fromLTRB(25, 0.0, 20, 10),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 42),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: size.width / 8.5,
                          width: size.width / 1.4,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 101, 101, 100)
                                  .withOpacity(0.1)),
                          child: TextField(
                            controller: firstname,
                            //autofocus: true,
                            autocorrect: true,
                            maxLines: 1,
                            obscureText: false,
                            textCapitalization: TextCapitalization.words,
                            //keyboardType: TextInputType.streetAddress,
                            style: const TextStyle(fontSize: 18),
                            cursorColor: Color.fromARGB(255, 20, 20, 20),
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 65, 64, 63)),
                              ),
                              hintText: 'Searching...',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 147, 145, 140),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                              hintMaxLines: 1,
                              prefixIcon: Icon(Icons.search,
                                  color: Color.fromARGB(255, 147, 145, 140)),
                            ),
                          ),
                        ),
                        SizedBox(width: size.width / 33),
                        InkWell(
                          child: Container(
                            height: size.width / 8.5,
                            width: size.width / 8,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 101, 101, 100),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: const Icon(
                              Icons.flatware,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context, rootNavigator: false).push(
                                MaterialPageRoute(
                                    builder: (context) => FilterChipDisplay(),
                                    maintainState: false));
                          },
                        )
                      ],
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.only(top: 14),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                child: Wrap(
                              spacing: 12.0,
                              runSpacing: 3.0,
                              children: <Widget>[
                                // filterChipWidget(chipName: 'All'),
                                filterChipWidget(chipName: 'Lunch'),
                                filterChipWidget(chipName: 'Chiken'),
                                filterChipWidget(chipName: '1200kal'),
                              ],
                            )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "+25 Recipes found for you",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Card(
                                  shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                          color: Colors.black54)),
                                  child: SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 25,
                                    width: MediaQuery.of(context).size.width /
                                        3.87,
                                    // ignore: unnecessary_const
                                    child: Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(left: 6),
                                          child: Text(
                                            "Sort By",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 11),
                                          child: Icon(
                                              Icons.keyboard_arrow_down_sharp,
                                              size: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ]),
                    SizedBox(
                      height: 34,
                    ),
                    Row(
                      children: [
                        Container(
                          height: size.width / 3.7,
                          width: size.width / 3.3,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/uk/uk3-1.jpg')),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          width: size.width / 20,
                        ),
                        SizedBox(
                          height: size.width / 3.7,
                          width: size.width / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Chiken Biryani',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.account_circle,
                                    color: Color.fromARGB(255, 18, 18, 17),
                                    size: size.width / 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Nagendra Mishra',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 12, 12, 12),
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: size.width / 17,
                                    width: size.width / 6,
                                    decoration: BoxDecoration(
                                      //color: Colors.amber,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 180, 179, 176),
                                          width: 1.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[700],
                                          size: size.width / 24,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '4.9',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 12, 12, 12),
                                              fontSize: 13),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width / 29,
                                  ),
                                  Container(
                                    height: size.width / 17,
                                    width: size.width / 4.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 180, 179, 176),
                                          width: 1.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.access_time_filled_sharp,
                                          color: Color.fromARGB(
                                              255, 216, 216, 213),
                                          size: size.width / 24,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '30 Min',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 12, 12, 12),
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          height: size.width / 3.7,
                          width: size.width / 3.3,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/uk/uk3-2.jpg')),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          width: size.width / 20,
                        ),
                        SizedBox(
                          height: size.width / 3.7,
                          width: size.width / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Veg Noodles',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.account_circle,
                                    color: Color.fromARGB(255, 18, 18, 17),
                                    size: size.width / 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Nagendra Mishra',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 12, 12, 12),
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: size.width / 17,
                                    width: size.width / 6,
                                    decoration: BoxDecoration(
                                      //color: Colors.amber,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 180, 179, 176),
                                          width: 1.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[700],
                                          size: size.width / 24,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '4.9',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 12, 12, 12),
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width / 29,
                                  ),
                                  Container(
                                    height: size.width / 17,
                                    width: size.width / 4.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 180, 179, 176),
                                          width: 1.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.access_time_filled_sharp,
                                          color: Color.fromARGB(
                                              255, 216, 216, 213),
                                          size: size.width / 24,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '30 Min',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 12, 12, 12),
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          height: size.width / 3.7,
                          width: size.width / 3.3,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  // fit: BoxFit.fill,
                                  image: AssetImage('assets/uk/uk3-3.jpg')),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          width: size.width / 20,
                        ),
                        SizedBox(
                          height: size.width / 3.7,
                          width: size.width / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Vegetable Salad',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.account_circle,
                                    color: Color.fromARGB(255, 18, 18, 17),
                                    size: size.width / 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Nagendra Mishra',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 12, 12, 12),
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: size.width / 17,
                                    width: size.width / 6,
                                    decoration: BoxDecoration(
                                      //color: Colors.amber,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 180, 179, 176),
                                          width: 1.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[700],
                                          size: size.width / 24,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '4.9',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 12, 12, 12),
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width / 29,
                                  ),
                                  Container(
                                    height: size.width / 17,
                                    width: size.width / 4.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 180, 179, 176),
                                          width: 1.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.access_time_filled_sharp,
                                          color: Color.fromARGB(
                                              255, 216, 216, 213),
                                          size: size.width / 24,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '30 Min',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 12, 12, 12),
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          height: size.width / 3.7,
                          width: size.width / 3.3,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/uk/uk3-4.jpg')),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          width: size.width / 20,
                        ),
                        SizedBox(
                          height: size.width / 3.7,
                          width: size.width / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Vegetable Sandwich',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.account_circle,
                                    color: Color.fromARGB(255, 18, 18, 17),
                                    size: size.width / 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Nagendra Mishra',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 12, 12, 12),
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: size.width / 17,
                                    width: size.width / 6,
                                    decoration: BoxDecoration(
                                      //color: Colors.amber,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 180, 179, 176),
                                          width: 1.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[700],
                                          size: size.width / 24,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '4.9',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 12, 12, 12),
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width / 29,
                                  ),
                                  Container(
                                    height: size.width / 17,
                                    width: size.width / 4.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 180, 179, 176),
                                          width: 1.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.access_time_filled_sharp,
                                          color: Color.fromARGB(
                                              255, 216, 216, 213),
                                          size: size.width / 24,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '30 Min',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 12, 12, 12),
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
          ),
        ]),
      )),
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
          fontSize: 16.0,
          fontWeight: FontWeight.bold),
      // labelPadding: EdgeInsets.all(6),
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
      elevation: 5,
      pressElevation: 5,
    );
  }
}
