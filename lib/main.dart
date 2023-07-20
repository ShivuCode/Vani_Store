import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:untitled2/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static Color theme = Colors.blue.shade100;
  Color txtColor = Colors.white;
  List<Color> themeColor = [
    Colors.black,
    Colors.blue.shade100,
    Colors.pink.shade100,
    Colors.green.shade100,
    Colors.purple.shade100
  ];
  List<Color> extraTheme = [];
  void changeTheme(Color c) {
    setState(() {
      theme = c;
    });
  }

  void changeColors(List<Color> colors) => setState(() => extraTheme = colors);

  List<DropdownMenuItem<dynamic>> item = [];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
            preferredSize: const Size(double.infinity, 70),
            child: Container(
              color: theme,
              padding: const EdgeInsets.all(5.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Vani Store",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: txtColor)),
                    SizedBox(
                      width: 500,
                      child: TabBar(
                        indicatorColor: theme,
                        isScrollable: false,
                        padding: const EdgeInsets.only(bottom: 5.0),
                        overlayColor: MaterialStateProperty.all<Color>(theme),
                        tabs: [
                          Tab(
                              child: Text("Home",
                                  style: TextStyle(
                                      fontSize: 16, color: txtColor))),
                          Tab(
                              child: Text("Products",
                                  style: TextStyle(
                                      fontSize: 16, color: txtColor))),
                          Tab(
                              child: Text("Blog",
                                  style: TextStyle(
                                      fontSize: 16, color: txtColor))),
                          Tab(
                              child: Text("About us",
                                  style: TextStyle(
                                      fontSize: 16, color: txtColor))),
                          Tab(
                              child: Text("Theme",
                                  style:
                                      TextStyle(fontSize: 16, color: txtColor)))
                        ],
                      ),
                    ),
                  ]),
            )),
        body: TabBarView(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    onError: (exception, stackTrace) {},
                    image: const AssetImage("h.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Shop With Us",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 80)),
                    addVerticalSpace(10),
                    const Text(
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,\nmaking it over 2000 years old.",
                        style: TextStyle(fontSize: 12, color: Colors.white)),
                    addVerticalSpace(20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    theme.withOpacity(1)),
                                minimumSize: MaterialStateProperty.all(
                                    const Size(150, 45))),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Container(
                                        padding: const EdgeInsets.all(20),
                                        width: 400,
                                        height: 400,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text("Login or SignUp",
                                                style: TextStyle(
                                                    fontSize: 28,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            addVerticalSpace(30),
                                            const TextField(
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              decoration: InputDecoration(
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .blue)),
                                                  hintText: "Email",
                                                  hintStyle: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey),
                                                  prefixIcon: Icon(Icons.email,
                                                      color: Colors.grey)),
                                            ),
                                            const TextField(
                                              keyboardType:
                                                  TextInputType.visiblePassword,
                                              decoration: InputDecoration(
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .blue)),
                                                  hintText: "Password",
                                                  hintStyle: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey),
                                                  prefixIcon: Icon(
                                                      Icons.remove_red_eye,
                                                      color: Colors.grey)),
                                            ),
                                            addVerticalSpace(20),
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.black),
                                                  minimumSize:
                                                      MaterialStateProperty.all(
                                                          Size(200, 50)),
                                                ),
                                                child: const Text("Login",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            addVerticalSpace(20),
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.black),
                                                  minimumSize:
                                                      MaterialStateProperty.all(
                                                          const Size(200, 50)),
                                                ),
                                                child: const Text("Skip",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: const Text("SHOP NOW")),
                        addHorizontalSpace(20),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(theme),
                                minimumSize: MaterialStateProperty.all(
                                    const Size(200, 45))),
                            onPressed: () {},
                            child: Text("CLUB MEMBERSHIP",
                                style: TextStyle(color: txtColor)))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [theme.withOpacity(0.2), theme.withOpacity(0.2)]),
              ),
              child: ListView(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.only(top: 10),
                    subtitle: Column(
                      children: [
                        Text("BEST COLLECTION",
                            style: TextStyle(
                                fontSize: 26,
                                color: theme,
                                fontWeight: FontWeight.bold)),
                        addVerticalSpace(10),
                        const Text(
                            "Our best collection some brands and products serves avialable Search and buy.",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black)),
                        const Text(
                            "All our world! I hope so you will also Happy after shopping",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black)),
                      ],
                    ),
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.all(20),
                    title: Row(
                      children: [
                        Text("Sort By: "),
                      ],
                    ),
                  ),
                  ListTile(
                      title: Container(
                        margin: const EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              addProducts(1),
                              addProducts(2),
                              addProducts(4),
                              addProducts(5),
                              addProducts((6)),
                              addProducts(7),
                              addProducts(1),
                              addProducts(2),
                              addProducts(4),
                              addProducts(5),
                              addProducts((6)),
                              addProducts(7),
                            ],
                          ),
                        ),
                      ),
                      subtitle: Container(
                        margin: const EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              addProducts(1),
                              addProducts(2),
                              addProducts(4),
                              addProducts(5),
                              addProducts((6)),
                              addProducts(7),
                              addProducts(1),
                              addProducts(2),
                              addProducts(4),
                              addProducts(5),
                              addProducts((6)),
                              addProducts(7),
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
            Container(
              color: theme.withOpacity(0.5),
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: 600,
                  margin: const EdgeInsets.only(top: 200),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white, Colors.white]),
                  ),
                  child: SingleChildScrollView(
                    child: Center(
                      child: Wrap(
                        spacing: 20,
                        runSpacing: 5,
                        children: [
                          blogCard(),
                          blogCard(),
                          blogCard(),
                          blogCard(),
                          blogCard(),
                          blogCard(),
                          blogCard(),
                          blogCard(),
                          blogCard(),
                          blogCard(),
                          blogCard(),
                          blogCard()
                        ],
                      ),
                    ),
                  )),
            ),
            Stack(
              children: [
                Scaffold(
                  backgroundColor: theme.withOpacity(0.3),
                  body: Container(
                    margin: const EdgeInsets.only(left: 230),
                    padding:
                        const EdgeInsets.only(top: 100, left: 320, right: 50),
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.topCenter,
                            colors: [Colors.white, Colors.white])),
                    child: Stack(children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                      theme.withOpacity(0.3),
                                      theme.withOpacity(0.3)
                                    ])),
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    const Icon(Icons.stacked_bar_chart_sharp,
                                        size: 80, color: Colors.grey),
                                    addVerticalSpace(10),
                                    const Text("EXCELLENCE",
                                        style: TextStyle(fontSize: 20)),
                                    addVerticalSpace(10),
                                    const Text(
                                        "Some fifty years ago there was a",
                                        style: TextStyle(fontSize: 12)),
                                    const Text(" curious case of whale-trover ",
                                        style: TextStyle(fontSize: 12)),
                                    const Text(
                                      "litigated in England",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              addHorizontalSpace(60),
                              Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                      theme.withOpacity(0.3),
                                      theme.withOpacity(0.3)
                                    ])),
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    const Icon(Icons.people_alt_sharp,
                                        size: 80, color: Colors.grey),
                                    addVerticalSpace(10),
                                    const Text("EXCELLENCE",
                                        style: TextStyle(fontSize: 20)),
                                    addVerticalSpace(10),
                                    const Text(
                                        "Some fifty years ago there was a",
                                        style: TextStyle(fontSize: 12)),
                                    const Text(" curious case of whale-trover ",
                                        style: TextStyle(fontSize: 12)),
                                    const Text(
                                      "litigated in England",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          addVerticalSpace(60),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                      theme.withOpacity(0.3),
                                      theme.withOpacity(0.3)
                                    ])),
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    const Icon(Icons.bookmarks_outlined,
                                        size: 80, color: Colors.grey),
                                    addVerticalSpace(10),
                                    const Text("EXCELLENCE",
                                        style: TextStyle(fontSize: 20)),
                                    addVerticalSpace(10),
                                    const Text(
                                        "Some fifty years ago there was a",
                                        style: TextStyle(fontSize: 12)),
                                    const Text(" curious case of whale-trover ",
                                        style: TextStyle(fontSize: 12)),
                                    const Text(
                                      "litigated in England",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              addHorizontalSpace(60),
                              Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                      theme.withOpacity(0.3),
                                      theme.withOpacity(0.3)
                                    ])),
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    const Icon(Icons.compost,
                                        size: 80, color: Colors.grey),
                                    addVerticalSpace(10),
                                    const Text("EXCELLENCE",
                                        style: TextStyle(fontSize: 20)),
                                    addVerticalSpace(10),
                                    const Text(
                                        "Some fifty years ago there was a",
                                        style: TextStyle(fontSize: 12)),
                                    const Text(" curious case of whale-trover ",
                                        style: TextStyle(fontSize: 12)),
                                    const Text(
                                      "litigated in England",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 120, left: 60),
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 5)),
                  child: Stack(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 170,
                              height: 400,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [theme, theme]),
                              )),
                          Container(
                              width: 180,
                              height: 400,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('p8.png'),
                                      fit: BoxFit.cover,
                                      opacity: 0.4)))
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(30),
                        child: Center(
                            child: Text("About Us",
                                style: TextStyle(
                                    fontSize: 100,
                                    fontWeight: FontWeight.bold,
                                    color: txtColor))),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(50),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [theme.withOpacity(0.2), theme.withOpacity(0.2)]),
              ),
              child: ListView(
                children: [
                  const Text("Default Theme Colors",
                      style: TextStyle(fontSize: 26, color: Colors.black)),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: themeColor.length,
                        itemBuilder: (context, position) {
                          return TextButton(
                              onPressed: () {
                                changeTheme(themeColor.elementAt(position));
                              },
                              child: Icon(Icons.circle,
                                  color: themeColor.elementAt(position),
                                  size: 100));
                        }),
                  ),
                  const Text("New Theme Colors",
                      style: TextStyle(fontSize: 26, color: Colors.black)),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: extraTheme.length,
                        itemBuilder: (context, position) {
                          return TextButton(
                              onPressed: () {
                                changeTheme(extraTheme.elementAt(position));
                              },
                              child: Icon(Icons.circle,
                                  color: extraTheme.elementAt(position),
                                  size: 100));
                        }),
                  ),
                  const Text("Add Theme Colors",
                      style: TextStyle(fontSize: 26, color: Colors.black)),
                  addVerticalSpace(20),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Pick a color!'),
                                      content: SingleChildScrollView(
                                        child: MultipleChoiceBlockPicker(
                                          pickerColors:
                                              extraTheme, //default color
                                          onColorsChanged:
                                              (List<Color> colors) {
                                            changeColors(colors);
                                          },
                                        ),
                                      ),
                                      actions: <Widget>[
                                        ElevatedButton(
                                          child: const Text('DONE'),
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pop(); //dismiss the color picker
                                          },
                                        ),
                                      ],
                                    );
                                  });
                            },
                            child: const Icon(Icons.add_circle,
                                size: 100, color: Colors.black)),
                      ],
                    ),
                    contentPadding: const EdgeInsets.only(left: 20),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
