import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:insta_app/models/feed.dart';
import 'package:insta_app/widgets/feed_card_item.dart';


import 'add_post_screen.dart';

class HomeScreen extends StatefulWidget {
  final User user;
 const HomeScreen({Key key, this.user}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var itemList;
  @override
  void initState() {
    super.initState();
    itemList = getFeeds();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(
              Icons.camera_enhance,
              size: 32.0,
            ),
            SizedBox(width: 10.0),
            Text('Instagram'),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
          ),
        ],
      ),
      body: Stack(
        children: [
           if(widget.user != null)
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              height: 50,
              child: Text(widget.user.email),
            ),
          ),


          ListView.builder(
            padding: EdgeInsets.only(bottom: 50.0),
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return FeedCardItem(feed: itemList[index],);
              }),

          Positioned(
            bottom: 10.0,
            left: 50.0,
            right: 50.0,
            child: RaisedButton(
              elevation: 10.0,
              padding: EdgeInsets.all(20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0)
              ),
              color: Colors.red,
              onPressed: () async{

                var feedItem = await Navigator.push(context, MaterialPageRoute(builder: (xcontext){
                  return AddPostScreen();
                }));

                print('FEED ITEM =========== ${feedItem.uploadedBy}');
                setState(() {
                  itemList.add(feedItem);
                });
              },
              child: Text("Post",style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}

//  import 'add_post_screen.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//    var itemList;
//   @override
//   void initState() {
//     super.initState();
//     itemList = getFeeds();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.black.withOpacity(
//           0.6,
//         ),
//         automaticallyImplyLeading: false,
//         leading: Icon(
//           Icons.camera_enhance,
//         ),
//         title: Text('Instagram',
//             style: TextStyle(
//               fontSize: 20.0,
//             )),
//         actions: [
//           IconButton(icon: Icon(Icons.send), onPressed: () {}),
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: getFeeds().length,
//         itemBuilder: (context, index) {
//           return FeedCardItem( feed: getFeeds()[index],
//           );
//         },
//         padding: const EdgeInsets.only(top: 5.0),
//         // children: [
//         //  PostItem(),
//         //  PostItem(),
//         //   PostItem(),

//         // ],
//       ),
//     );
//   }
// }
