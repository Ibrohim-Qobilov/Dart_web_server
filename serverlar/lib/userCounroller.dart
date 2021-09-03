import 'package:serverlar/serverlar.dart';

class UserCounroller extends ResourceController {
  final _user = [
    {"id": 1, "user": "Ibrohim", "school": 8},
    {"id": 2, "user": "Tramp", "school": "New york Hight scholl"},
    {"id": 3, "user": "Macsim", "school": 123},
    {"id": 4, "user": "hause", "school": 198},
  ];
  
  @Operation.get()
  Future<Response> getAllUser() async {
    Response.ok(_user);
  }
  @Operation.get("id")
  Future<Response> getAllUserId(@Bind.path("id")int id) async {
    return Response.ok(_user[id]);
  }
}
