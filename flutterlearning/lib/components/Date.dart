import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DatePage extends StatefulWidget {
  DatePage({Key key}) : super(key: key);

  @override
  _DatePageState createState() => _DatePageState();
}
/**
 * 获取当前时间chuo
 * var now = new DateTime.now();
 * now.millisecondsSinceEpoch;
 * 
 * 
 * Future是一种异步，类似于js中的promise，想获取Future中的值，可以通过then获取
 */
class _DatePageState extends State<DatePage> {
  
  var nowDate = new DateTime(1989,8,9);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 日期转成时间戳
    print(nowDate.millisecondsSinceEpoch);
    
    print(formatDate(nowDate,[yyyy,'年',mm,'月',dd,'日']));

  }

  _showDatePicker(){
    showDatePicker(
      context: context, 
      initialDate: nowDate, 
      firstDate: DateTime(1980), 
      lastDate: DateTime(2030),
    ).then((value) {

      setState(() {
        this.nowDate=value;
      });

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日期组件'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 增加点击事件
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('${nowDate}'),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: _showDatePicker
            )
          ],
        ),
      )
    );
  }
}