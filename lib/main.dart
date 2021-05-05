import 'package:flutter/material.dart';

void main()
{
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;
  List<Widget> _pages = List<Widget>();
  @override
  void initState() {
    _pages.add(ListScreen());
    _pages.add(LayersScreen());
    _pages.add(GridViewScreen());
    _pages.add(InfoScreen());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
        title: Text("Bottom AppBar with FAB",),
      centerTitle: true,
      backgroundColor: Color(0xFF134e6f),

    ),
      body: _pages[_currentIndex],

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 1,

        clipBehavior: Clip.antiAlias,

        child: Container(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: .5,
                ),
              ),
            ),
            child: BottomNavigationBar(
                currentIndex: _currentIndex,
                backgroundColor: Color(0xFFdee0e6),
                selectedItemColor: Colors.grey[600],
                unselectedItemColor: Colors.blueGrey,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    title: Text("List"),
                    icon: Icon(Icons.format_list_bulleted),
                  ),
                  BottomNavigationBarItem(
                    title: Text("layers"),
                    icon: Icon(Icons.layers),
                  ),

                  BottomNavigationBarItem(
                    title: Text("Grid View"),
                    icon: Icon(Icons.grid_view),
                  ),

                   BottomNavigationBarItem(
                     title: Text('Info'),
                     icon: Icon(Icons.info),
                   ),
                ]),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,

        floatingActionButton: Padding
          (
        padding: const EdgeInsets.all(1),
        child: FloatingActionButton(
          backgroundColor: Color(0xFF134e6f),
          child: Icon(Icons.add),
          onPressed: () => setState(() {
            _currentIndex = 1;
          }),
        ),
      ),
      ));
  }
}
class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(child: Text('TAB:1',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 60),)),
    );
  }
}
class LayersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(child: Text('TAB:2',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 60))),
    );
  }
}
class GridViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(child: Text('TAB:3',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 60))),
    );
  }
}
class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(child: Text('TAB:4',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 60))),
    );
  }
}
