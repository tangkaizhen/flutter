import 'package:flutter/material.dart';
import 'components/Title.dart';
import 'components/BtnsDemo.dart';
class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {

  Widget textSection=Container(
    padding: EdgeInsets.all(32),
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese ,Lake Oeschinen lies at the foot of the Blüemlisalp in the BerneseLake Oeschinen lies at the foot of the Blüemlisalp in the BerneseLake Oeschinen lies at ,the foot of the Blüemlisalp in the BerneseLake Oeschinen lies at the foot of the Blüemlisalp in the BerneseLake Oeschinen lies at the foot of the Blüemlisalp in the BerneseLake Oeschinen lies at the foot of the Blüemlisalp in the BerneseLake Oeschinen lies at the foot of ,the Blüemlisalp in the BerneseLake Oeschinen lies at the foot of the Blüemlisalp in the BerneseLake Oeschinen lies at the foot of the Blüemlisalp in the BerneseLake Oeschinen lies at the foot of the Blüemlisalp in the Bernese',
      softWrap:false
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ListView(
          children: <Widget>[
            Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571737427708&di=a2147a10806948b7390957a65f52c1c7&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F1e8fc847802781a83159b8bbce8f01a0b3933dab2f8a2-HlIfBp_fw658',
              height: 150,
              fit: BoxFit.cover,
            ),
            TitleDemo(),
            BtnsDemo(),
            textSection 
          ],
        ),
      ),
    );
  }

}