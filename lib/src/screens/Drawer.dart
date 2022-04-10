import 'package:flutter/material.dart';


// class NavBar extends StatelessWidget {
//   final _auth = FirebaseAuth.instance;
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           const UserAccountsDrawerHeader(
//             currentAccountPicture: CircleAvatar(
//               backgroundImage:
//                   AssetImage('image/istockphoto-980239992-170667a.jpg'),
//             ),
//             accountEmail: Text(
//               'jane.doe@example.com',
//               style: TextStyle(color: Colors.black),
//             ),
//             accountName: Text(
//               'Jane Doe',
//               style: TextStyle(fontSize: 24.0, color: Colors.black),
//             ),
//             decoration: BoxDecoration(
//               color: Color(0xFFECFEFE),
//             ),
//           ),
//           ListTile(
//             leading: const Icon(Icons.person),
//             title: const Text(
//               'Profile',
//               style: TextStyle(fontSize: 24.0),
//             ),
//             onTap: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute<void>(
//                   builder: (BuildContext context) => const ProfilePage(),
//                 ),
//               );
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.settings),
//             title: const Text(
//               'Settings',
//               style: TextStyle(fontSize: 24.0),
//             ),
//             onTap: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute<void>(
//                   builder: (BuildContext context) => const SettingsPage(),
//                 ),
//               );
//             },
//           ),
//           const Divider(
//             height: 10,
//             thickness: 1,
//           ),
//           ListTile(
//             leading: const Icon(Icons.favorite),
//             title: const Text(
//               'Become a Host',
//               style: TextStyle(fontSize: 24.0),
//             ),
//             onTap: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute<void>(
//                   builder: (BuildContext context) => const HomePage(),
//                 ),
//               );
//             },
//           ),
//           const Divider(
//             height: 10,
//             thickness: 1,
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.logout,
//               color: Colors.red,
//             ),
//             title: const Text(
//               'Log out',
//               style: TextStyle(fontSize: 24.0),
//             ),
//             onTap: () async {
//               print("**************************************");
//               print(FirebaseAuth.instance.currentUser?.email);
//               await _auth.signOut();
//               Settings.clearCache();
//               print("======================================");
//               print(FirebaseAuth.instance.currentUser?.email);
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return MainPage();
//                   },
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget buildLogut(BuildContext context) {
//     return SimpleSettingsTile(
//       title: 'Log out',
//       subtitle: '',
//       leading: IconWidget(icon: Icons.logout, color: Colors.blueAccent),
//       onTap: () async {
//         print("**************************************");
//         print(FirebaseAuth.instance.currentUser?.email);
//         await _auth.signOut();
//         Settings.clearCache();
//         print("======================================");
//         print(FirebaseAuth.instance.currentUser?.email);
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) {
//               return MainPage();
//             },
//           ),
//         );
//       },
//     );
//   }
// }
class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
        /*  UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  AssetImage('image/istockphoto-980239992-170667a.jpg'),
            ),
            accountEmail: Text(
              "${loggedInUser.email != null?"${loggedInUser.email}":""}",
              style: TextStyle(color: Colors.black),
            ),
            accountName: Text(
              "${loggedInUser.fName != null?"${loggedInUser.fName}":""}",
              style: TextStyle(fontSize: 24.0, color: Colors.black),
            ),
            decoration: BoxDecoration(
              color: Color(0xFFECFEFE),
            ),
          ),*/
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(
              'Profile',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
            /*  Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const ProfilePage(),
                ),
              );*/
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              'Settings',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
            /*  Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const SettingsPage(),
                ),
              );*/
            },
          ),
          const Divider(
            height: 10,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              'Switch to hosting',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              /*  Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const SettingsPage(),
                ),
              );*/
            },
          ),
          const Divider(
            height: 10,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text(
              'Become a Host',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
            /*  Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const HomePage(),
                ),
              );*/
            },
          ),
          const Divider(
            height: 10,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: const Text(
              'Log out',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () async {
          /*    print("**************************************");
              print(FirebaseAuth.instance.currentUser?.email);
              await _auth.signOut();
              print("======================================");
              print(FirebaseAuth.instance.currentUser?.email);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MainPage();
                  },
                ),
              );*/
            },
          ),
        ],
      ),
    );
  }

  /*Widget buildLogut(BuildContext context) {
    return SimpleSettingsTile(
      title: 'Log out',
      subtitle: '',
      leading: IconWidget(icon: Icons.logout, color: Colors.blueAccent),
      onTap: () async {
        print("**************************************");
        print(FirebaseAuth.instance.currentUser?.email);
        await _auth.signOut();
        print("======================================");
        print(FirebaseAuth.instance.currentUser?.email);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return MainPage();
            },
          ),
        );
      },
    );
  }*/
}
