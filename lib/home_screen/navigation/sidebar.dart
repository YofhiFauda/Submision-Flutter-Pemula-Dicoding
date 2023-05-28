import 'package:flutter/material.dart';
import 'package:yopay/model/constants.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kPrimaryColor,
      child: ListView(
        padding: const EdgeInsets.only(top: 40),
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          CircleAvatar(
            radius: 64,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 65,
              backgroundImage: const AssetImage('assets/images/avatar.png'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Yofhi Fauda',
              style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontFamily: 'Poopins'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            height: 1,
            color: Colors.white.withOpacity(0.2),
          ),
          ListTile(
            iconColor: Colors.white,
            textColor: Colors.white,
            leading: Icon(
              Icons.dashboard,
              size: 25,
            ),
            title: Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          const SizedBox(height: 10),
          ListTile(
            iconColor: Colors.white,
            textColor: Colors.white,
            leading: Icon(Icons.notifications, size: 25),
            title: Text(
              'Notification',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () => {Navigator.of(context).pop()},
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: const Center(
                  child: Text(
                    '8',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            iconColor: Colors.white,
            textColor: Colors.white,
            leading: Icon(
              Icons.favorite,
              size: 25,
            ),
            title: Text(
              'Favorit',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          const SizedBox(height: 10),
          ListTile(
            iconColor: Colors.white,
            textColor: Colors.white,
            leading: Icon(
              Icons.share,
              size: 25,
            ),
            title: Text(
              'Share',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          const SizedBox(height: 10),
          ListTile(
            iconColor: Colors.white,
            textColor: Colors.white,
            leading: Icon(
              Icons.settings,
              size: 25,
            ),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          const SizedBox(height: 10),
          ListTile(
            iconColor: Colors.white,
            textColor: Colors.white,
            leading: Icon(
              Icons.arrow_back_ios_new,
              size: 25,
            ),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}




// import 'package:flutter/material.dart';

// class SidebarButton extends StatelessWidget {
//   final String name;
//   final String avatarUrl;
//   final VoidCallback onPressed;

//   SidebarButton({
//     required this.name,
//     required this.avatarUrl,
//     required this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: onPressed,
//       child: Row(
//         children: [
//           CircleAvatar(
//             backgroundImage: NetworkImage(avatarUrl),
//             radius: 20,
//           ),
//           SizedBox(width: 10),
//           Text(
//             name,
//             style: TextStyle(fontSize: 16),
//           ),
//           Spacer(),
//           Icon(Icons.settings),
//         ],
//       ),
//     );
//   }
// }


// SidebarButton(
//   name: "John Doe",
//   avatarUrl: "https://example.com/avatar.jpg",
//   onPressed: () {
//     // Logika yang dijalankan saat tombol ditekan
//   },
// )

