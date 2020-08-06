import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
    PerfilSearchPage(), CalenderUserPage(), HomeUserPage(),  MessageUserPage(),PerfilUserPage(),
  ];

  int _selectedIndex = 2;

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
      appBar: AppBar(
        backgroundColor: Color(0xFF33691E),
        title: Text("Ola, Evandro", style: TextStyle(fontSize: 15),),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("Evandro Souza Santos"),
              accountEmail: Text("evandro.bss@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("http://i.pravatar.cc/300"),
              ),
            )
          ],
        ),
      ),
      //Pagina central que sempre muda conforme a seleção do menu
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
      ),
      //Bottom menu da pagina principal
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, 
          onTap: _onItemTapped,
          items: [
            
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/search.svg",
                color: _selectedIndex == 0 ? Color(0xFF33691E) : Colors.grey[850],
                height: 24,
              ),
              title: Text('Busca',
                  style: TextStyle(
                    color: _selectedIndex == 0 ? Color(0xFF33691E) : Colors.grey[850],
                    fontSize: _selectedIndex == 0 ? 14 : 12,
                )
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/calendar.svg",
                color: _selectedIndex == 1 ? Color(0xFF33691E) : Colors.grey[850],
                height: 24,
              ),
              title: Text('Calendario', 
                  style: TextStyle(
                    color: _selectedIndex == 1 ? Color(0xFF33691E) : Colors.grey[850],
                    fontSize: _selectedIndex == 1 ? 14 : 12,
                )
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/home.svg",
              color: _selectedIndex == 2 ? Color(0xFF33691E) : Colors.grey[850],
              height: 24,
              ),
              title: Text('Home', 
                style: TextStyle(
                  color: _selectedIndex == 2 ? Color(0xFF33691E) : Colors.grey[850],
                  fontSize: _selectedIndex == 2 ? 14 : 12,
                )
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/smartmessage.svg",
                color: _selectedIndex == 3 ? Color(0xFF33691E) : Colors.grey[850],
                height: 24,
              ),
              title: Text('Mensagem',
                  style: TextStyle(
                    color: _selectedIndex == 3 ? Color(0xFF33691E) : Colors.grey[850],
                    fontSize: _selectedIndex == 3 ? 14 : 12,
                )
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/user.svg",
                color: _selectedIndex == 4 ? Color(0xFF33691E) : Colors.grey[850],
                height: 24,
              ),
              title: Text('Perfil',
                  style: TextStyle(
                    color: _selectedIndex == 4 ? Color(0xFF33691E) : Colors.grey[850],
                    fontSize: _selectedIndex == 4 ? 14 : 12,
                    
                )
              ),
            ),
          ],
      ),
    );
  }
}

