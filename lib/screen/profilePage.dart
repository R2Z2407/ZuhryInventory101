import 'package:flutter/material.dart';
import 'package:zuhry_invent/screen/loginPage.dart';
import 'package:zuhry_invent/screen/notifPage.dart';
import 'package:zuhry_invent/component/customButton.dart';
import 'package:zuhry_invent/common/utils/custom_colors.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            backgroundColor: Coolors.primary,
            title: Container(
                child: Text(
              'Profile',
              style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  fontSize: 21),
            ))),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(60),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      SizedBox(
                          height: 120,
                          width: 120,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/fotoprofil.jpg"),
                          )),
                      const SizedBox(height: 25),
                      itemProfile(
                          "Nama", "Lily Kamilah Ramadhani", Icons.person),
                      SizedBox(
                        height: 10,
                      ),
                      itemProfile("NIP", "140910250099", Icons.list),
                      SizedBox(
                        height: 10,
                      ),
                      itemProfile("Role", "Karyawan Kontrak", Icons.call_end),
                      SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        text: 'Notifications',
                        onPressed: () =>
                            Navigator.pushNamed(context, NotifPage.routeName),
                        height: 50,
                        width: double.infinity,
                      ),
                      const SizedBox(height: 25),
                      CustomButton(
                        text: 'Log Out',
                        onPressed: () => Navigator.popAndPushNamed(
                            context, LoginPage.routeName),
                        height: 50,
                        width: double.infinity,
                      ),
                    ]),
              ),
            )
          ],
        ));
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            ListTile(
                title: Text(title),
                titleTextStyle: TextStyle(
                  color: Coolors.primary,
                  fontFamily: 'Nunito',
                  fontSize: 15,
                ),
                subtitle: Text(subtitle),
                subtitleTextStyle:
                    TextStyle(fontFamily: 'Nunito', fontSize: 12),
                leading: Icon(iconData)),
          ],
        ));
  }
}
