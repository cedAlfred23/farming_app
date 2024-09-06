import 'package:farming_app/pages/modules/dashboard/home_page.dart';
import 'package:farming_app/pages/modules/feeding/feeding.dart';
import 'package:farming_app/pages/modules/finance/finance.dart';
import 'package:farming_app/pages/modules/health/health.dart';
import 'package:farming_app/pages/modules/inventory/inventory.dart';
import 'package:farming_app/pages/modules/livestock/livestock_screen.dart';
import 'package:farming_app/pages/modules/settings/settings.dart';
import 'package:farming_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart' as FontAwesome;

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _selectedIndex = 0;
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    // GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  void _navigateBottomBar(int index) async {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Future<bool> _systemBackButtonPressed() async {
  //   if (_navigatorKeys[_selectedIndex].currentState?.canPop() == true) {
  //     _navigatorKeys[_selectedIndex]
  //         .currentState
  //         ?.pop(_navigatorKeys[_selectedIndex].currentContext);
  //     return false;
  //   } else {
  //     SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
  //     return true; // Indicate that the back action is handled
  //   }
  // }

  // final List<Widget Function()> _pages = [
  //   () => const HomePage(),
  //   () => const Internship(),
  //   () => const CoursesPage(),
  //   () => const AnnouncementPage(),
  //   () => const Messages(),
  //   // () => const Notifications(),
  //   // () => const PaymentPage()
  // ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      bottomNavigationBar: NavigationBar(
        height: 60,
        indicatorColor: Colors.transparent,
        // shadowColor: Colors.transparent,
        // onTap:_navigateBottomBar ,
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          _navigateBottomBar(index);
        },
        destinations: [
          NavigationDestination(
            icon:
                SvgPicture.asset('assets/svgs/house.svg', color: Colors.black),
            label: '',
          ),
          const NavigationDestination(
            icon: FontAwesome.FaIcon(
              FontAwesome.FontAwesomeIcons.magnifyingGlass,
              color: Colors.black,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              'assets/svgs/book.svg',
            ),
            label: '',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/svgs/bullhorn.svg'),
            label: '',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/svgs/messages.svg'),
            label: '',
          ),
        ],
      ),

      // BottomNavigationBar(
      //   backgroundColor: Colors.white,
      //   currentIndex: _selectedIndex,
      //   unselectedItemColor: Colors.grey,
      //   selectedItemColor: Colors.black,
      //   onTap: (index) {
      //     _navigateBottomBar(min(index, _pages.length - 1));
      //   },
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset('assets/svg/house.svg',),
      //       // icon: FontAwesome.FaIcon(FontAwesome.FontAwesomeIcons.house),
      //       label: '',
      //     ),
      //     const BottomNavigationBarItem(
      //       icon: FontAwesome.FaIcon(
      //           FontAwesome.FontAwesomeIcons.magnifyingGlass),
      //       label: '',
      //     ),
      //     // BottomNavigationBarItem(
      //     //   icon: Container(
      //     //     height: 36,
      //     //     width: 47,
      //     //     decoration: BoxDecoration(
      //     //         gradient: const LinearGradient(
      //     //             begin: Alignment.topLeft,
      //     //             end: Alignment.bottomRight,
      //     //             stops: [
      //     //               0.2,
      //     //               0.9
      //     //             ],
      //     //             colors: [
      //     //               Color.fromRGBO(229, 27, 35, 1),
      //     //               Color.fromRGBO(5, 104, 144, 1),
      //     //               //   Color(0x056890),
      //     //               // Color(0xE51B23)
      //     //             ]),
      //     //         borderRadius: BorderRadius.circular(12)),
      //     //     // child: SvgPicture.asset(
      //     //     //   'assets/svg/add-outline.svg',
      //     //     // ),
      //     //   ),
      //     //   // icon: Icon(CupertinoIcons.plus_rectangle_fill),
      //     //   label: 'Mes cours',
      //     // ),
      //      BottomNavigationBarItem(
      //       icon: SvgPicture.asset('assets/svg/book.svg',),
      //       label: '',
      //     ),

      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset('assets/svg/bullhorn.svg',),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset('assets/svg/messages.svg',),
      //       label: '',
      //     ),
      //   ],
      // ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: IndexedStack(
          index: _selectedIndex,
          children: <Widget>[
            Navigator(
              key: _navigatorKeys[0],
              onGenerateRoute: (route) => MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            ),
            Navigator(
              key: _navigatorKeys[1],
              onGenerateRoute: (route) => MaterialPageRoute(
                builder: (context) => const LiveStock(),
              ),
            ),
            Navigator(
              key: _navigatorKeys[2],
              onGenerateRoute: (route) => MaterialPageRoute(
                builder: (context) => const Feeding(),
              ),
            ),
            Navigator(
              key: _navigatorKeys[3],
              onGenerateRoute: (route) => MaterialPageRoute(
                builder: (context) => const Health(),
              ),
            ),
            Navigator(
              key: _navigatorKeys[4],
              onGenerateRoute: (route) => MaterialPageRoute(
                builder: (context) => const Inventory(),
              ),
            ),
          ],
        ),
      ),
      // body: _pages[min(_selectedIndex, _pages.length - 1)](),
      drawer: Container(
        color: Colors.white,
        width: 320,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CircleAvatar(
                        child: Image.asset(kImageUserPlaceholder),
                      ),
                    ),
                    const Gap(10),
                    const Text(
                      'John Doe',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Gap(5),
                    const Row(
                      children: [
                        Text(
                          '277 abonnements',
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w300),
                        ),
                        Gap(10),
                        Text(
                          '277 abonnés',
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    const Gap(20),
                    ListTile(
                      leading: const Icon(Icons.person_2_rounded),
                      title: const Text('Dashboard'),
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const Profile()));
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.book_rounded),
                      title: const Text('Profile'),
                      onTap: () {
                        print('clickeed');
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Settings())
                        );
                      },
                    ),
                    ListTile(
                      leading: const FontAwesome.FaIcon(
                          FontAwesome.FontAwesomeIcons.bullhorn),
                      title: const Text('Livestocks'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.person_2_rounded),
                      title: const Text('Feeding'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.person_2_rounded),
                      title: const Text('Health'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text('Tasks'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text('Calendar'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text('Inventory'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text('Finance'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('Settings'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                const Icon(Icons.brightness_4_rounded)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
