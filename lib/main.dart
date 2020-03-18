import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF8e44ad),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 0, 100),
        title: Text('Wallet'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.bell,
            ),
            onPressed: () => print('bell pressed'),
          ),
        ],
        elevation: 0,
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('nikhilrathore600@gmail.com'),
              accountName: Text('Nikhil Kumar'),
              currentAccountPicture: CircleAvatar(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset('assets/circle-cropped.png'),
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Prices'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Balance'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Account'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              title: Text('help'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        color: Color(0xFFbdc3c7),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  color: Color.fromARGB(255, 20, 0, 100),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  // height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      colors: [Color(0xFFe67e22), Color(0xFFf1c40f)],
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Current Balance',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              'USD',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '\$352,423',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: Text(
                                '+3.5%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF2ecc71)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 80),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '3.4666823 BTC',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.levelUpAlt,
                          color: Color(0xFF2980b9),
                        ),
                        label: Text("Send"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: RaisedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.levelDownAlt,
                          color: Color(0xFF2ecc71),
                        ),
                        label: Text("Recieve"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.topLeft,
                child: Text(
                  'Currency',
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          leading: CircleAvatar(
                            backgroundColor: Color(0xffecf0f1),
                            child: Icon(
                              FontAwesomeIcons.bitcoin,
                              color: Color(0xFFf1c40f),
                            ),
                          ),
                          title: Text(
                            'Bitcoin',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          trailing: Text(
                            '\$80000',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          leading: CircleAvatar(
                            backgroundColor: Color(0xffecf0f1),
                            child: Icon(
                              FontAwesomeIcons.ethereum,
                              color: Color(0xff3498db),
                            ),
                          ),
                          title: Text(
                            'Ethereum',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          trailing: Text(
                            '\$4500',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          leading: CircleAvatar(
                            backgroundColor: Color(0xffecf0f1),
                            child: Icon(
                              FontAwesomeIcons.euroSign,
                              color: Color(0xff27ae60),
                            ),
                          ),
                          title: Text(
                            'Euro',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          trailing: Text(
                            '\$99',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.wallet), title: Text('Wallet')),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.search), title: Text('Search')),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.ticketAlt), title: Text('Coupans')),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user), title: Text('Account')),
        ],
        currentIndex: index,
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        unselectedItemColor: Colors.white,
        selectedItemColor: Color(0xFFf1c40f),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 20, 0, 100),
      ),
    );
  }
}
