import 'package:flutter/material.dart';

class TabReviews extends StatelessWidget {
  const TabReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25, right: 26, left: 26),
      child: ListView.builder(
        // physics: BouncingScrollPhysics(),
        itemExtent: 122,
        itemCount: 6,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundImage:
                        AssetImage('assets/image/gavra_profil.jpeg'),
                  ),
                  SizedBox(height: 14),
                  Text(
                    "6.3",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                  )
                ],
              ),
              SizedBox(width: 12),
              Container(
                width: 261,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Iqbal Shafiq Rozaan",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government.",
                      style: TextStyle(fontSize: 12, color: Color(0xffD5D5D5)),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
