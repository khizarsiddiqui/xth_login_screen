import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static String tag = '/ProfileScreen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late List<ProfileScreenModel> profileList;

  @override
  // ignore: must_call_super
  void initState() {
    profileList = ProfileScreenList();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics:NeverScrollableScrollPhysics,
        child: Column(
          children: <Widget>[
            Container(
              width: width,
              padding: EdgeInsets.all(spacing_standard_new),
              color: Colors.yellow,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircleAvatar(radius: width * 0.11, backgroundImage: CachedNetworkImageProvider(Icons.CircleAvatar)),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      text("John Doe", fontSize: textSizeNormal, fontFamily: fontMedium).paddingOnly(left: spacing_standard, right: spacing_standard),
                      text("john.doe@example.com", textColor: Colors.black).paddingOnly(left: spacing_standard, right: spacing_standard),
                      ],
                  )
                ],
              ),
            ),
            SizedBox(height: spacing_standard_new),
            Container(
              decoration: boxDecoration(radius: 10.0, bgColor: color_yellow, text("Upgrade to PRO")),
              padding: EdgeInsets.only(left: spacing_standard, right: spacing_standard, top: spacing_standard),
              child: ListView.builder(
                backgroundColor: Colors.grey,
                itemCount: profileList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        Icons.Privacy,
                        text("Privacy");
                      } else if (index == 1) {
                        Icons.History,
                        text("Purchase History");
                      } else if (index == 2) {
                        Icons.Support,
                        text("Help & Support");
                      } else if (index == 3) {
                        Icons.Settings,
                        text("Settings");
                      } else if (index == 4) {
                        Icons.Invite,
                        text("Invite a Friend");
                      }
                    },
                  );
                },
              ).paddingOnly(bottom: spacing_standard_new),
            ).paddingAll(spacing_standard_new)
          ],
        ),
      ),
    );
  }

  LogoutBottom (context) {
      backgroundColor: Colors.black,
      context: context,
      builder: (context) {
        return Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: color_white,
            text: ("Logout"),
            borderRadius: BorderRadius.all(20.0),
          ),
        );
      },
    }
  }