class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    required this.name,
    required this.lastMessage,
    required this.image,
    required this.time,
    required this.isActive,
  });
}

List chatsData = [
  Chat(
    name: 'Ismail Ibrahim',
    lastMessage: "Are you Ok?",
    image: "assets/images/user.png",
    time: "3m ago",
    isActive: false,
  ),
  Chat(
    name: "Hassan Ali",
    lastMessage: "Where Are you?!!!",
    image: "assets/images/user_2.png",
    time: "5m ago",
    isActive: true,
  ),
  Chat(
    name: "Mohammed Hassan",
    lastMessage: "When will you arrive?",
    image: "assets/images/user_3.png",
    time: "2s ago",
    isActive: true,
  ),
  Chat(
    name: "Hassan Ali",
    lastMessage: "Hw R U?",
    image: "assets/images/user_4.png",
    time: "8hrs ago",
    isActive: true,
  ),
  Chat(
    name: "Abukar Osman",
    lastMessage: "Are you ready?",
    image: "assets/images/user_5.png",
    time: "2m ago",
    isActive: true,
  ),
  Chat(
    name: "Abdulkadir Mohammed",
    lastMessage: "Are you ready?",
    image: "assets/images/user_2.png",
    time: "2m ago",
    isActive: true,
  ),
  Chat(
    name: "Ali Hassan",
    lastMessage: "Are you ready?",
    image: "assets/images/user_2.png",
    time: "2m ago",
    isActive: true,
  ),
  Chat(
    name: "Mohammod Mohammed",
    lastMessage: "Are you ready?",
    image: "assets/images/user_5.png",
    time: "2m ago",
    isActive: true,
  ),
];
