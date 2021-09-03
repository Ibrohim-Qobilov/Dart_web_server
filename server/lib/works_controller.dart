import 'package:server/server.dart';

class WorkController extends ResourceController {
  final _works = [
    {"Words": "horse"},
    {"Words": "cow"},
    {"Words": "camel"},
    {"Words": "sheep"},
    {"Words": "goat"},
  ];

  @Operation.get()
  Future<Response> getAllworks() async {
    return Response.ok(_works);
  }

  @Operation.get("id")
  Future<Response> getWorkAllById(@Bind.path('id')int id) async {
   // int id = int.parse(request.path.variables['id']);
    return Response.ok(_works[id]);
  }
}
