
import 'dart:io';
import 'css.dart';
import 'index.dart';

main(List<String> args) {
  HttpServer.bind("192.168.2.26", 8080).then((server) {
    print("Server ishga tushdi !!!");
    server.listen((HttpRequest req) {
      HttpResponse res = req.response;
      Uri url = req.uri;
      print("Uel shu: ${url}");
      res.headers.contentType = ContentType.html;

      if (url.toString() == "/") {
        res.write(html);
      } else if (url.toString() == "/about") {
        res.write(cssStyle);
      } else {
        res.write("""<h1 style="color:red;"> 404 Page not found </h1>""");
      }
      res.close();
    });
  });
}
