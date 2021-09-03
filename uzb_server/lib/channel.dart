import 'package:uzb_server/uzb_countroller.dart';

import 'uzb_server.dart';

class UzbServerChannel extends ApplicationChannel {
  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  @override
  Controller get entryPoint {
    final router = Router();

    router.route("/uzbek/:id").link(() => UzbCountroller());
    return router;
  }
}
