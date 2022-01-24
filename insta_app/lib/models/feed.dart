

class Feed {
  String imageUrl;
  String caption;
  String uploadedBy;
  bool like;
  int commentsCount;
  String uploaderImageUrl;
  String timeAgo;
  bool save;
  bool sponsored;
  String postDate;
  String description;

  Feed(
      {this.imageUrl,
      this.caption,
      this.uploadedBy,
      this.like,
      this.commentsCount,
      this.uploaderImageUrl,
      this.timeAgo,
      this.save,
      this.sponsored,
      this.postDate,
      this.description});
}

List<Feed> getFeeds() {
  return [
    Feed(
      imageUrl:
         'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.6435-9/43828997_2226558910956755_76154314233479168_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=174925&_nc_ohc=Kka2yzYxg1IAX_3fEGF&_nc_ht=scontent.fktm8-1.fna&oh=02124200d12af9eba8c12bf7d74aeb25&oe=60CE94F3',
      caption: 'Hey, beautiful!!!!',
      uploadedBy: 'Nitisa Gyawali',
      like: false,
      commentsCount: 68,
      uploaderImageUrl:
          'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.6435-9/c362.0.1067.1067a/s851x315/87033495_2598947053717937_7888408240327753728_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=da31f3&_nc_ohc=OZpfG5n0WcMAX-j2buQ&tn=lH0Y1nL760rRYUvy&_nc_ht=scontent.fktm8-1.fna&tp=28&oh=b8bff7456b95b75c2753d3bb3d8423ce&oe=60CF5759',
      timeAgo: '1 minutes ago',
      save: false,
      sponsored: true,
      postDate: "Sept 5, 2020",
      description:
          'Pokhara is a city on Phewa Lake, in central Nepal. It’s known as a gateway to the Annapurna Circuit, a popular trail in the Himalayas. Tal Barahi Temple, a 2-story pagoda, sits on an island in the lake',
    ),
    Feed(
        imageUrl:
           // 'https://images.unsplash.com/photo-1599021277840-9d3f4f383742?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
        'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.6435-9/66056248_2326175717643266_6877006097102667776_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=174925&_nc_ohc=32PWM7dO4EoAX_bc3aL&_nc_ht=scontent.fktm8-1.fna&oh=14da0c3af87292abbea5d3c3ceecd9bf&oe=60CF0A68',
        caption: 'Lumbini, Mayadevi Temple',
        uploadedBy: 'Shankar Bhattarai',
        like: false,
        commentsCount: 8,
        uploaderImageUrl:
            'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.6435-9/133187255_2781321748795325_1176325922318905483_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=UwJBPU0LTH8AX_OY4RF&_nc_ht=scontent.fktm8-1.fna&oh=7082a2120e35fb172a53e7df9c60f46d&oe=60CF265B',
        timeAgo: '2 minutes ago',
        save: false,
        sponsored: false,
        postDate: "Sep 2, 2020",
        description:
            'Lumbinī is a Buddhist pilgrimage site in the Rupandehi District of Lumbini Province in Nepal. '),
    Feed(
      imageUrl:
         // 'https://images.unsplash.com/photo-1567337710282-00832b415979?ixlib=rb-1.2.1&auto=format&fit=crop&w=3888&q=80',
       'https://scontent.fktm8-1.fna.fbcdn.net/v/t31.18172-8/27173785_2145993192302227_3831204588404063482_o.jpg?_nc_cat=102&ccb=1-3&_nc_sid=8bfeb9&_nc_ohc=J1dKbgm9dkwAX-1-aSo&tn=lH0Y1nL760rRYUvy&_nc_ht=scontent.fktm8-1.fna&oh=c8428e2e520144604f451466bbac4ea0&oe=60EDB0A6',
      caption: 'Hello, myself Mechanical Engineer',
      uploadedBy: 'Sujata Gyawali',
      like: false,
      commentsCount: 8,
      uploaderImageUrl:
         'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.6435-9/59301366_2466694286898781_5270409245718740992_n.jpg?_nc_cat=107&ccb=1-3&_nc_sid=174925&_nc_ohc=4pARDfU_wwIAX9ehwr8&_nc_ht=scontent.fktm8-1.fna&oh=b31881e503f93137899cac5aa0317280&oe=60CEB6C7',
      timeAgo: '5 minutes ago',
      save: false,
      sponsored: true,
      postDate: "Aug 5, 2020",
      description:
      'Mechanical engineering is an engineering branch that combines engineering physics and mathematics principles with materials science to design, analyze, manufacture, and maintain mechanical systems',
    ),
    Feed(
      imageUrl:
          //'https://images.unsplash.com/photo-1599076479757-7effbcd66acb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
     
     'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.6435-9/138310907_2885053868440586_5448065564263481270_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=8bfeb9&_nc_ohc=wb6tpFZFlbAAX9WjBzv&tn=lH0Y1nL760rRYUvy&_nc_ht=scontent.fktm8-1.fna&oh=77f94886563b25498e66dbba1f986e9c&oe=60CF9C39',
      caption: 'lots of love!!!!',
      uploadedBy: 'Evans Gyawali',
      like: false,
      commentsCount: 2,
      uploaderImageUrl:
        'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.6435-9/138310907_2885053868440586_5448065564263481270_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=8bfeb9&_nc_ohc=wb6tpFZFlbAAX9WjBzv&tn=lH0Y1nL760rRYUvy&_nc_ht=scontent.fktm8-1.fna&oh=77f94886563b25498e66dbba1f986e9c&oe=60CF9C39',
      timeAgo: '10 minutes ago',
      save: false,
      sponsored: true,
        postDate: "July 2, 2020",
        description: 'Kathmandu, Nepal\'s capital, is set in a valley surrounded by the Himalayan mountains.'
    ),
  ];
}
