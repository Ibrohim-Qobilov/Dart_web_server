import 'package:uzb_server/uzb_server.dart';

class UzbCountroller extends ResourceController {
  final _user = [
    {"id": 1, "user": "Ibrohim", "status": true},
    {"id": 2, "user": "Alisher", "status": false},
    {"id": 3, "user": "Dilshod", "status": true},
    {"id": 4, "user": "Bahrom", "status": true},
  ];

  @Operation.get()
  Future<Response> getAllUser() async {
    return Response.ok(_user);
  }
  @Operation.get("id")
  Future<Response> getAllUserId(@Bind.path("id")int id) async {
    return Response.ok(_user[id]);
  }
}
