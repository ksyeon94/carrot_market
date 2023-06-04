import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            _buildProfileRow(),
            SizedBox(
              height: 30,
            ),
            _buildProfileButton(),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoundTextButton('판매내역', CupertinoIcons.line_horizontal_3),
                _buildRoundTextButton('구매내역', CupertinoIcons.bag),
                _buildRoundTextButton('관심목록', CupertinoIcons.heart),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow() {
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 65,
              height: 65,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.5),
                child: Image.network('http://placeimg.com/200/100/people',
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[100]),
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 15,
                ),
              ),
              bottom: 0,
              right: 0,
            )
          ],
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'developer',
              style: textTheme().headline2,
            ),
            SizedBox(
              height: 10,
            ),
            Text('좌동 #00912')
          ],
        )
      ],
    );
  }

  Widget _buildProfileButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFD4D5DD),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(6.0),
        ),
        height: 45,
        child: Center(
          child: Text(
            '프로필보기',
            style: textTheme().subtitle1,
          ),
        ),
      ),
    );
  }

  Widget _buildRoundTextButton(String title, IconData iconData) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromRGBO(255, 226, 208, 1),
            border: Border.all(color: Color(0xFFD4D5DD), width: 0.5)
          ),
          child: Icon(
            iconData,
            color: Colors.orange,
          ),
        ),
        SizedBox(height: 10,),
        Text(title, style: textTheme().subtitle1,)
      ],
    );
  }
}
