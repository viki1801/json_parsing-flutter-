


class PostList{
  final List<Post> posts;

  PostList({required this.posts});

  factory PostList.fromJson(List<dynamic>parsedJson){
  List<Post> posts = parsedJson.map((e) => Post.fromJson(e)).toList();
   return new PostList(posts: posts);
  }
}


class Post{

  int userId;
  int id;
  String title;
  String body;

  Post({ required this.userId, required this.id, required this.title, required this.body });

  factory Post.fromJson(Map<String, dynamic> json){
    return Post(userId: json['userId'],
        id: json['id'], title: json['title'], body: json['body']);
  }

}