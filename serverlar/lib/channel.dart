import 'package:serverlar/userCounroller.dart';

import 'serverlar.dart';

class ServerlarChannel extends ApplicationChannel {
  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  @override
  Controller get entryPoint {
    final router = Router();

    router.route("/user/:id").link(() => UserCounroller());
    return router;

    
  }
}
