import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tennis_play_all/stores/app.store.dart';
import 'perfil.search.view.dart';
import 'home.user.view.dart';
import 'calender.view.dart';
import 'perfil.user.view.dart';
import 'message.user.view.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  PageController _pageController = PageController();

  List<Widget> _screen = [
    HomeUserPage(), PerfilSearchPage(), CalenderUserPage(), MessageUserPage(),PerfilUserPage(),
  ];

  int _selectedIndex = 0;
  void _onPageChanged (int index){
    setState(() {
      _selectedIndex = index;
    });
 
  }

  void _onItemTapped (int selectedIndex){
    _pageController.jumpToPage(selectedIndex);
  }

  AppStore _appStore;

  @override
  Widget build(BuildContext context) {
    _appStore = Provider.of<AppStore>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Principal'),),
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                Icons.home,
                color: _selectedIndex == 0 ? Colors.green : Colors.grey,
                size: 20,
              ),
              title: Text('Home', 
                style: TextStyle(
                  color: _selectedIndex == 0 ? Colors.green : Colors.black,
                  fontSize: 10,
                )
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: _selectedIndex == 1 ? Colors.green : Colors.grey,
                size: 20,
              ),
              title: Text('Busca',
                  style: TextStyle(
                    color: _selectedIndex == 1 ? Colors.green : Colors.black,
                    fontSize: 10,
                )
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
                color: _selectedIndex == 2 ? Colors.green : Colors.grey,
                size: 20,
              ),
              title: Text('Calendario', 
                  style: TextStyle(
                    color: _selectedIndex == 2 ? Colors.green : Colors.black,
                    fontSize: 10,
                )
              ),
            ),
             BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                  color: _selectedIndex == 3 ? Colors.green : Colors.grey,
                  size: 20,
              ),
              title: Text('Mensagem',
                  style: TextStyle(
                    color: _selectedIndex == 3 ? Colors.green : Colors.black,
                    fontSize: 10,
                )
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                  color: _selectedIndex == 4 ? Colors.green : Colors.grey,
                  size: 20,
              ),
              title: Text('Perfil',
                  style: TextStyle(
                    color: _selectedIndex == 4 ? Colors.green : Colors.black,
                    fontSize: 10,
                    
                )
              ),
            ),
          ],
      ),
    );
  }
}

