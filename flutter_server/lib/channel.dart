import 'flutter.dart';
import 'flutter_server.dart';

class FlutterServerChannel extends ApplicationChannel {
  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  @override
  Controller get entryPoint {
    final router = Router();
    router.route("/flutter/:id").link(() => Flutter_countroller());
    return router;
  }
}
