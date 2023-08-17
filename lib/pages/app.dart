import 'package:flutter/material.dart';
import 'package:video_call_app/credential.dart';
import 'package:video_call_app/pages/login_page.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class MyCall extends StatelessWidget {
  const MyCall({
    Key? key,
    required this.callID,
  }) : super(key: key);

  final String callID;
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: Credentials.appId,
      appSign: Credentials.appSign,
      userID: LoginPage.username,
      userName: LoginPage.name,
      callID: callID,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}
