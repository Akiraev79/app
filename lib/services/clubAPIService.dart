import 'dart:convert';
import 'dart:io';

import 'package:controle_financeiro_pessoal/services/APIService.dart';

class ClubAPIService implements APIService{

  @override
  String uri = "http://labs.believeit.com.br/projetos/tennis-app-api/api/club";

  @override
  Future<String> post(Map body) async {
    // Em português: só faz sentido se as APIs pedirem trativas diferentes para cada recurso. Isso ainda não está definido.
    // TODO: set or maintain CLUB body accordingly.
    var httpClient = new HttpClient();
    final request = await HttpClient().postUrl(Uri.parse(this.uri));
    request.headers.set('content-type', 'applicaton/json');
    request.add(utf8.encode(json.encode(body)));
    HttpClientResponse response = await request.close();
    // TODO: check response.statusCode.
    String reply = await response.transform(utf8.decoder).join();
    httpClient.close();
    return reply;

  }

}