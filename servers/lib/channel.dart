import 'package:servers/misolCoutroller.dart';

import 'servers.dart';

class ServersChannel extends ApplicationChannel {
  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  @override
  Controller get entryPoint {
    final router = Router();

    router.route("/misol/:id").link(() => MisolCoutroller());
    return router;

    
  }
}
