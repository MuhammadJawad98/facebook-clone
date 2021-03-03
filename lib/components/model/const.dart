import 'package:facebook/components/model/settingComponents.dart';
import 'package:facebook/components/model/user.dart';
import 'package:flutter/material.dart';

import 'newfeeds.dart';

class Const {
  static List<feedData> list_usersfeed = <feedData>[
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
            'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bWVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
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
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
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
          'https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
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
          'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80',
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
          'https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2247&q=80',
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
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80',
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
          'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bWVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
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
          'https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
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
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
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
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80',
    ),
  ];

  static List<feedData> list_userfeed = <feedData>[
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/photo-1556125574-d7f27ec36a06?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZXZlbnRzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bWVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/photo-1585251173119-90ab21d70067?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8ZXZlbnRzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/photo-1580600301356-2062459b0eb5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8ZXZlbnRzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/flagged/photo-1570183075251-42dfe72c138e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fGV2ZW50c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/photo-1571215682742-561893604b40?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGV2ZW50c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/photo-1571348265141-e45fb052def4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjB8fGV2ZW50c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/photo-1571348265141-e45fb052def4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjB8fGV2ZW50c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/photo-1573525974207-d89fdb28351a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjl8fGV2ZW50c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url: '',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/photo-1578364250106-dffb076c2dde?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzV8fGV2ZW50c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  ];

  static List<User> user_list = <User>[
    User('',
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
    User('',
        'https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
    User('',
        'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80'),
    User('',
        'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80'),
    User('',
        'https://images.unsplash.com/photo-1588862081167-d5b98006637e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8YmF0bWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    User('',
        'https://images.unsplash.com/photo-1485875437342-9b39470b3d95?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8d29tZW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  ];
static List<SettingComponents> comp_list = <SettingComponents>[
  SettingComponents('COVID-19', 'Information Center',Icons.group,Colors.amber),
  SettingComponents('Friend', '300 Friends',Icons.person,Colors.cyan),
  SettingComponents('Groups', '9 groups',Icons.group,Colors.redAccent),
  SettingComponents('Memories', '1 new',Icons.timelapse,Colors.deepOrange),
  SettingComponents('Saved', '9 new',Icons.save,Colors.lightBlueAccent),
  SettingComponents('Pages', '9 new',Icons.pages,Colors.brown),
  SettingComponents('Events', '1 new',Icons.event,Colors.pinkAccent),
  SettingComponents('Gaming', '.',Icons.gamepad,Colors.deepOrangeAccent),
  SettingComponents('Jobs', '.',Icons.shopping_bag,Colors.deepPurple),

];
}
