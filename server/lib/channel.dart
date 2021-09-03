import 'package:server/works_controller.dart';

import 'server.dart';


class ServerChannel extends ApplicationChannel {
  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  @override
  Controller get entryPoint {
    final router = Router();

    router.
    route("/works/:id")
    .link(() => WorkController());

    return router;
  }
}
