# day13

<img width="1440" alt="image" src="https://user-images.githubusercontent.com/60324587/180590510-04cff77a-9f9d-440a-8c59-bb951ffe8122.png">

1. What did I learn? CUBIT

```
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<PostsCubit>(
        create: (context) => PostsCubit()..getposts(),
        child: PostsView(),
      ),
    );
  }
}

```
### to wrap MyHomePage (PostsView in this case) with BlocProvider
### call getposts with cascade method, easier method, no need to create constructor and caal it here,

```
Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: BlocBuilder<PostsCubit, List<Post>>(
        builder: (context, posts) {
          if (posts.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(posts[index].title!),
              ),
            );
          });
        },
      ),
    );
```
### here we go, we wrapped our content with BlocBuilder<Postscubit> also list<post> it will receive list of posts, however we also need to check, it will take some time time to load it from internet- it will highly depend on your internet speed, we need to check it withif statement => if posts is Empty show circluar progress indicator
###otherwise show what we have

```
class Post {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) => Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body']);
}
```
### just a simple class to consume json data




