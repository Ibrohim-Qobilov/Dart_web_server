import 'package:servers/servers.dart';

class MisolCoutroller extends ResourceController {
  final _users = [
    {"User":"Ibrohim"},
    {"User":"Ali"},
    {"User":"Due"},
    {"User":"Jony"},
    {"User":"Vali"},
  ];

  @Operation.get()
  Future<Response> GetAllUsers() async {
    return Response.ok(_users);
  }
  @Operation.get("id")
  Future<Response> GetAllUsersId(@Bind.path("id")int id) async {
    return Response.ok(_users[id]);
  }
}
