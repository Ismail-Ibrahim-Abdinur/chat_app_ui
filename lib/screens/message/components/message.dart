import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants.dart';
import '../../../models/ChatMessage.dart';
import 'audio_message.dart';
import 'message_status_dot.dart';
import 'text_message.dart';
import 'video_message.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageContent(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        case ChatMessageType.audio:
          return AudioMessage(
            message: message,
          );
        case ChatMessageType.video:
          return VideoMessage(
            message: message,
          );
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/user.png"),
            ),
            SizedBox(
              width: kDefaultPadding / 2,
            ),
          ],
          messageContent(message),
          if (message.isSender)
            MessageStatusDot(
              status: message.messageStaus,
            ),
        ],
      ),
    );
  }
}
