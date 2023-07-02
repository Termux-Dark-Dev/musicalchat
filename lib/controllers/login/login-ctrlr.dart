import 'dart:async';
import 'dart:io';

import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:mobx/mobx.dart';

part 'login-ctrlr.g.dart';

class LoginCtrlr = _LoginCtrlr with _$LoginCtrlr;

abstract class _LoginCtrlr with Store {
  late String accessToken;
  @observable
  bool isbtntap = false;

  @action
  Future<Map<bool, String>> login() async {
    try {
      isbtntap = true;

      final result = await FlutterWebAuth2.authenticate(
        url:
            "https://accounts.spotify.com/authorize?client_id=e2f839e2c3b64cf5a91596b69e26cb63&redirect_uri=musicalchat://callback&scope=user-read-currently-playing&response_type=token&state=123",
        callbackUrlScheme: "musicalchat",
      );
      
      // Extract token from resulting url
      final token = Uri.parse(result);
      String at = token.fragment;
      at = "http://website/index.html?$at"; // Just for easy parsing
      this.accessToken =
          Uri.parse(at).queryParameters['access_token'].toString();

      isbtntap = false;
      return {true: "Sucessfully Logged in"};
    } on Exception catch (e) {
      String msg = "";
      switch (e.runtimeType) {
        case SocketException:
          msg = "The network connection is not available";
          break;
        case TimeoutException:
          msg = "The request to the Spotify server timed out";
          break;
        default:
          msg = "An unknown error occurred";
      }
      isbtntap = false;
      return {false: msg};
    }
  }
}
