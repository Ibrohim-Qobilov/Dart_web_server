import 'package:flutter_server/flutter_server.dart';

class Flutter_countroller extends ResourceController {
  final _flutter = [
    {"Id": 1, "user": "Bahrom"},
    {"Id": 2, "user": "Ibrohim"},
    {"Id": 3, "user": "Ramazon oka"},
    {"Id": 4, "user": "Abdujallil"},
    {"Id": 5, "user": "Javohir"},
    {"Id": 6, "user": "Opa"},
    {"Id": 7, "user": "Abbos"},
    {"Id": 8, "user": "Saud oka"},
    {"Id": 9, "user": "Jahongir"},
    {"Id": 10, "user": "Zuhriddin oka"},
  ];

  @Operation.get()
  Future<Response> getAllUsers() async {
    return Response.ok(_flutter);
  }
  @Operation.get("id")
  Future<Response> getAllUsersId(@Bind.path("id")int id) async {
    return Response.ok(_flutter[id]);
  }
}
