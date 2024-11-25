import 'package:flutter/material.dart';
import 'package:taskmapsmonth/adddate.dart';
import 'package:taskmapsmonth/container.dart';

class PageVieww extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page View Example')),
      body: PageView(
        children: [
          Container(
            color: Colors.red[100],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      "https://th.bing.com/th/id/OIP.WmOFn8si2RAgbbt94URrIAAAAA?w=179&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                  SizedBox(height: 20),
                  Text(
                    'أهلاً بك !',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.green[100],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      "https://th.bing.com/th/id/OIP.CDNcpAbG98gQCUsDKYpLVgHaE8?rs=1&pid=ImgDetMain"),
                  SizedBox(height: 20),
                  Text(
                    'تعرف على كل ماهو جديد',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.blue[100],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      "https://th.bing.com/th/id/OIP.A3WO6Zf4am4CnkrZs6omfQHaHa?w=156&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                  SizedBox(height: 20),
                  Text(
                    'فلتبدأ رحلتك معنا',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => HawState(),
                        ),
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'فلتبدأ رحلتك معنا',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
