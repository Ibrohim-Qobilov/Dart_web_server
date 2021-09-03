import 'dart_server.dart';

class UserController extends ResourceController {
  final _users = [
    {
      "user1": "Ibrohim",
      "id": 1,
      "image": "https://unsplash.com/photos/4ngFvOjh4TI"
    },
    {
      "user2": "Asadbek",
      "id": 2,
      "image": "https://unsplash.com/photos/4ngFvOjh4TI"
    },
    {
      "user3": "Abbos",
      "id": 3,
      "image": "https://unsplash.com/photos/4ngFvOjh4TI"
    },
    {
      "user4": "Ali",
      "id": 4,
      "image": "https://unsplash.com/photos/4ngFvOjh4TI"
    },
    {
      "user5": "Nodir",
      "id": 5,
      "image": "https://unsplash.com/photos/4ngFvOjh4TI"
    },
  ];
  // agar id keritmasam bu funksiya ishlaydi
  @Operation.get() 
  Future<Response> getAllUsers() async {
    return Response.ok(_users);
  }
  // agar id keritsan bu funksiya ishlayd i
  @Operation.get('id')
  Future<Response> getUserById(@Bind.path('id') int id) async {
    return Response.ok(_users[id]); 
  }
  // yangi user qoshish uchun
  @Operation.post() 
  Future<Response> postAllUsers() async {
    return Response.ok("Post method ishga tushdi");
  }
  // ochirib tashash uchun
  @Operation.delete() 
  Future<Response> deleteAllUsers() async {
    return Response.ok("Delete methodi ishga tushdi");
  } 
  //update qilish uchun
  @Operation.put() 
  Future<Response> pulAllUsers() async {
    return Response.ok("Put methodi ishga tushdi");
  }
}
