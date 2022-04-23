enum ChatMessageType { text, audio, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final MessageStatus messageStaus;
  final bool isSender;
  ChatMessage({
    required this.text,
    required this.messageType,
    required this.messageStaus,
    required this.isSender,
  });
}

List demoChatMessages = [
  ChatMessage(
    text: "Hi Ismail",
    messageType: ChatMessageType.text,
    messageStaus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "Hello, How are you doing?",
    messageType: ChatMessageType.text,
    messageStaus: MessageStatus.not_view,
    isSender: true,
  ),
  ChatMessage(
    text: "",
    messageType: ChatMessageType.audio,
    messageStaus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "",
    messageType: ChatMessageType.audio,
    messageStaus: MessageStatus.viewed,
    isSender: true,
  ),
];
