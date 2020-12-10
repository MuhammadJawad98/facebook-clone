import 'package:facebook/components/model/newfeeds.dart';
import 'package:flutter/material.dart';

import 'FeedsCard.dart';
// import 'package:flutter_reaction_button/flutter_reaction_button.dart';

class NewFeeds extends StatefulWidget {
  @override
  _NewFeedsState createState() => _NewFeedsState();
}

class _NewFeedsState extends State<NewFeeds> {
  final List<feedData> list = <feedData>[
    feedData(
      date: 'today at 3:50pm',
      img_url:
          'https://images.unsplash.com/photo-1604537529586-87ac173f4310?ixid=MXwxMjA3fDF8MHxzZWFyY2h8MXx8bmF0dXJlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      name: 'Alex',
      text:
          'In every walk in with nature one receives far more than he seeks. John Muir',
      total_comments: '19 comments',
      total_likes: '19 likes',
      total_share: '12 share',
      user_image:
          'https://images.unsplash.com/photo-1508243771214-6e95d137426b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fG1lbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    feedData(
      date: 'today at 3:55pm',
      img_url:
          'https://images.unsplash.com/photo-1607419727375-6dd45089fced?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      name: 'Luis',
      text: 'By discovering nature, you discover yourself. Maxime Lagacé',
      total_comments: '28 comments',
      total_likes: '18 likes',
      total_share: '13 share',
      user_image:
          'https://images.unsplash.com/photo-1508243771214-6e95d137426b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fG1lbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    feedData(
      date: 'today at 3:56pm',
      img_url:
          'https://images.unsplash.com/photo-1441974231531-c6227db76b6e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8bmF0dXJlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      name: 'Nicolos',
      text: 'Going to the mountains is going home. John Muir',
      total_comments: '37 comments',
      total_likes: '17 likes',
      total_share: '14 share',
      user_image:
          'https://images.unsplash.com/photo-1463453091185-61582044d556?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fG1lbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    feedData(
      date: 'today at 3:57pm',
      img_url:
          'https://images.unsplash.com/photo-1497436072909-60f360e1d4b1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      name: 'Ben',
      text:
          'Love the world as your own self; then you can truly care for all things. Lao Tzu',
      total_comments: '46 comments',
      total_likes: '16 likes',
      total_share: '15 share',
      user_image:
          'https://images.unsplash.com/photo-1488161628813-04466f872be2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fG1lbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    feedData(
      date: 'today at 4:58pm',
      img_url:
          'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bmF0dXJlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      name: 'Minh',
      text:
          'Nature is pleased with simplicity. And nature is no dummy. Isaac Newton',
      total_comments: '55 comments',
      total_likes: '15 likes',
      total_share: '16 share',
      user_image:
          'https://images.unsplash.com/photo-1484515991647-c5760fcecfc7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzB8fG1lbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    feedData(
      date: 'today at 5:50pm',
      img_url:
          'https://images.unsplash.com/photo-1433086966358-54859d0ed716?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8bmF0dXJlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      name: 'Charles',
      text:
          'We don’t inherit the earth from our ancestors, we borrow it from our children. Native American proverb',
      total_comments: '64 comments',
      total_likes: '14 likes',
      total_share: '17 share',
      user_image:
          'https://images.unsplash.com/photo-1521341057461-6eb5f40b07ab?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzJ8fG1lbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    feedData(
      date: 'today at 6:40pm',
      img_url:
          'https://images.unsplash.com/photo-1518144591331-17a5dd71c477?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8bmF0dXJlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      name: 'John',
      text:
          'The clearest way into the Universe is through a forest wilderness. John Muir',
      total_comments: '73 comments',
      total_likes: '13 likes',
      total_share: '18 share',
      user_image:
          'https://images.unsplash.com/photo-1522098635833-216c03d81fbe?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzR8fG1lbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    feedData(
      date: 'today at 2:50pm',
      img_url:
          'https://images.unsplash.com/photo-1455218873509-8097305ee378?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fG5hdHVyZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      name: 'Marry',
      text:
          'Adopt the pace of nature. Her secret is patience. Ralph Waldo Emerson',
      total_comments: '82 comments',
      total_likes: '12 likes',
      total_share: '19 share',
      user_image:
          'https://images.unsplash.com/photo-1520409364224-63400afe26e5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fG1lbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    feedData(
      date: 'today at 1:45pm',
      img_url:
          'https://images.unsplash.com/photo-1426604966848-d7adac402bff?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fG5hdHVyZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      name: 'Lucifer',
      text:
          'Heaven is under our feet as well as over our heads. Henry David Thoreau',
      total_comments: '91 comments',
      total_likes: '11 likes',
      total_share: '123 share',
      user_image:
          'https://images.unsplash.com/photo-1499714608240-22fc6ad53fb2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8bWVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    feedData(
      date: 'today at 01:34pm',
      img_url:
          'https://images.unsplash.com/photo-1540206395-68808572332f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fG5hdHVyZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      name: 'Emily',
      text:
          'I took a walk in the woods and came out taller than the trees. Henry David Thoreau',
      total_comments: '10 comments',
      total_likes: '10 likes',
      total_share: '234 share',
      user_image:
          'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bWVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        primary: false,
        itemBuilder: (BuildContext context, int index) {
          return FeedCard(
              total_share: list[index].total_share,
              user_image: list[index].user_image,
              total_likes: list[index].total_likes,
              total_comments: list[index].total_comments,
              text: list[index].text,
              name: list[index].name,
              img_url: list[index].img_url,
              date: list[index].date);
        });
  }
}
