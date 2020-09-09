import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(100, (i) => "全裸サバイバル Vol. $i");


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: Icon(Icons.ondemand_video),
        title: const Text(
            'Youtubeアプリ',
        ),
        actions: <Widget>[
          SizedBox(
            width: 44,
            child: FlatButton(
              child: Icon(Icons.search),
              onPressed: (){
                //ToDo
              },
              ),
          ),
        SizedBox(
            width: 44,
            child: FlatButton(
              child: Icon(Icons.more_vert),
              onPressed: (){
                //ToDo
              },
              ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.network(
                        'https://yt3.ggpht.com/a-/AOh14GiNJchyWyrQl2RzjlKK7BW9U9DG8tJ_aSSbhA=s68-c-k-c0x00ffffff-no-rj-mo'
                        ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Discovery Channel',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      FlatButton(
                        child: Row(
                          children: <Widget>[
                            Icon(
                                Icons.video_call,
                                color: Colors.red,
                            ),
                            Text(
                                '登録する',
                            ),
                            Text(
                              'チャンネル登録者数 98万人',
                            ),
                          ],
                        ),
                        onPressed: (){
                          //ToDo
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
        Expanded(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () async{
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                  builder: (context) => VideoDetailPage(),
                    ),
                  );
                },
                contentPadding: EdgeInsets.all(8),
                leading: Image.network(
                  'https://i.ytimg.com/vi/PcXdaC0FP4c/hq720.jpg?sqp=-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLDR8N31dkZZtMJdPEuIPYIwXSP3sA'
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        '${items[index]}',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                            '138万回再生',
                          style: TextStyle(fontSize: 13),
                          ),
                        Text(
                            '8ヶ月前',
                        style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
                trailing: Icon(Icons.more_vert),
              );
            },
          ),
        ),
          ],
        ),
      ),
      ),
    );
  }
}
