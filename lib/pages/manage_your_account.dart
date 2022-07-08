import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:web_portfolio/pages/registeration.dart';

import 'login.dart';

double collapsableHeight = 0.0;
Color selected = Colors.red;
Color notSelected = Colors.blue;
getData(int index) {
  if (index == 0) {
    return LoginScreen();
  } else if (index == 1) {
    return RegistrationScreen();
  } else if (index == 2) {
    return "Manage Your Complaince";
  } else {
    return "Manage Your Complaince";
  }
}

class ManageYourAccount extends StatefulWidget {
  @override
  _ManageYourAccountState createState() => _ManageYourAccountState();
}

class _ManageYourAccountState extends State<ManageYourAccount> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  int _rowsPerPage1 = PaginatedDataTable.defaultRowsPerPage;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final DTS dts = DTS();
    final int tableItemsCount = dts.rowCount;
    final int defaultRowsPerPage = PaginatedDataTable.defaultRowsPerPage;
    final bool isRowCountLessDefaultRowsPerPage =
        tableItemsCount < defaultRowsPerPage;
    _rowsPerPage =
        isRowCountLessDefaultRowsPerPage ? tableItemsCount : defaultRowsPerPage;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            AnimatedContainer(
                margin: EdgeInsets.only(top: 79.0),
                duration: Duration(milliseconds: 375),
                curve: Curves.ease,
                height: (width < 800.0) ? collapsableHeight : 0.0,
                width: double.infinity,
                child: SingleChildScrollView(
                    child: Column(children: navBarItems))),
            Container(
                height: 80.0,
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        height: 80.h,
                        width: 80.w,
                      ),
                      LayoutBuilder(builder: (context, constraints) {
                        if (width < 800.0) {
                          return NavBarButton(
                            onPressed: () {
                              if (collapsableHeight == 0.0) {
                                setState(() {
                                  collapsableHeight = 240.0;
                                });
                              } else if (collapsableHeight == 240.0) {
                                setState(() {
                                  collapsableHeight = 0.0;
                                });
                              }
                            },
                          );
                        } else {
                          return Row(
                            children: navBarItems,
                          );
                        }
                      }),
                      Container(
                          // width: 100.w,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            RaisedButton(
                              color: Colors.blue,
                              onPressed: () {},
                              child: Text('Go to Glogle '),
                            ),
                            SizedBox(width: 5),
                            RaisedButton(
                              onPressed: () {},
                              child: Text('Logout'),
                            )
                          ]))
                    ]))
          ]),
          const Padding(
            padding: EdgeInsets.only(top: 12.0, bottom: 12.0, left: 20.0),
            child: Text(
              "Forensic Analysis",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          PaginatedDataTable(
            onRowsPerPageChanged: isRowCountLessDefaultRowsPerPage
                ? null
                : (rowCount) {
                    setState(() {
                      _rowsPerPage1 = rowCount;
                    });
                  },
            columns: const <DataColumn>[
              // DataColumn(label: Text('row')),
              DataColumn(label: Text('Id')),
              DataColumn(label: Text('Screening Token')),
              DataColumn(label: Text('Tag')),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('Created')),
              DataColumn(label: Text('Company')),
            ],
            source: dts,
            rowsPerPage:
                isRowCountLessDefaultRowsPerPage ? _rowsPerPage : _rowsPerPage1,
          ),
        ],
      ),
    );
  }
}

List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
String _selectedLocation;
List<Widget> navBarItems = [
  NavBarItem(
    text: 'About',
    child: DropdownButton(
        hint: Text('Dashboard'), // Not necessary for Option 1
        value: _selectedLocation,
        onChanged: (val) {
          _selectedLocation = val.toString();
          // setState(() {
          //   _selectedLocation = val.toString();
          // }
          // );
        },
        items: _locations.map((location) {
          return DropdownMenuItem(
            child: Text(location),
            value: location,
          );
        }).toList()),
  ),
  InkWell(
    child: NavBarItem(
      text: 'Screenings',
    ),
  ),
  NavBarItem(
    text: 'Forensics',
  ),
  NavBarItem(
    text: 'About',
    child: DropdownButton(
        hint: Text('Manual Screening'), // Not necessary for Option 1
        value: _selectedLocation,
        onChanged: (val) {
          _selectedLocation = val.toString();
          // setState(() {
          //   _selectedLocation = val.toString();
          // }
          // );
        },
        items: _locations.map((location) {
          return DropdownMenuItem(
            child: new Text(location),
            value: location,
          );
        }).toList()),
  ),
  NavBarItem(
    text: 'Settings',
  ),
];

class NavBarItem extends StatefulWidget {
  final String text;
  final Widget child;

  NavBarItem({
    this.text,
    this.child,
  });

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color color = notSelected;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          color = selected;

          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => getData(1)));
          // getData(2);
        });
      },
      onExit: (value) {
        setState(() {
          color = notSelected;
        });
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.blue,
          onTap: () {
            RegistrationScreen();
            getData(2);
          },
          child: Container(
            height: 60.0,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Container(
                  // width: 40.w,
                  child: widget.child ??
                      Container(
                          margin: EdgeInsets.only(top: 14),
                          child: Text(widget.text.toString())),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavBarButton extends StatefulWidget {
  final Function onPressed;

  NavBarButton({
    this.onPressed,
  });

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      width: 60.0,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {
            setState(() {
              widget.onPressed;
            });
          },
          child: const Icon(
            Icons.menu,
            size: 30.0,
            // color: Color(0xcfffffff),
          ),
        ),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class DTS extends DataTableSource {
  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: <DataCell>[
        // DataCell(Text('row #$index')),
        DataCell(Text('bb87e9f0-2bd4-4c7f-bb97-caad97cff58c$index')),
        DataCell(Text('6f6058ca-5138-409a-8483- $index')),
        DataCell(Text('Robin passport $index')),
        DataCell(Text('Processing $index')),
        DataCell(Text('10/28/2021, 4:38:44 PM $index')),
        DataCell(Text('Test Company $index')),
      ],
    );
  }

  @override
  int get rowCount => 3;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}

/// This is the stateless widget that the main application instantiates.
