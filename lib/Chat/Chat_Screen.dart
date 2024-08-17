import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text(
                "Chat",
                style: TextStyle(fontSize: 20, color: Colors.pink),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class ChatScreen with ChangeNotifier {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   Stream<QuerySnapshot> getChats(String userId) {
//     return _firestore
//         .collection('Chats')
//         .where('users', arrayContains: userId)
//         .snapshots();
//   }

//   Stream<QuerySnapshot> searchUsers(String query) {
//     return _firestore
//         .collection('Chats')
//         .where('email', isGreaterThanOrEqualTo: query)
//         .where('email', isLessThanOrEqualTo: query + '\uf8ff')
//         .snapshots();
//   }

//   Future<void> sendMeassage(
//       String chatId, String message, String receiverId) async {
//     final currentUser = _auth.currentUser;
//     if (currentUser != null) {
//       await _firestore
//           .collection('chats')
//           .doc(chatId)
//           .collection('message')
//           .add({
//         'senderId': currentUser.uid,
//         'receiverId': receiverId,
//         'messageBody': message,
//         'timestamp': FieldValue.serverTimestamp(),
//       });

//       await _firestore.collection('chats').doc(chatId).set({
//         'users': [currentUser.uid, receiverId],
//         'lastMessage': message,
//         'timestamp': FieldValue.serverTimestamp(),
//       }, SetOptions(merge: true));
//     }
//   }

//   Future<String?> getChatRoom(String receiverId) async {
//     final currentUser = _auth.currentUser;
//     if (currentUser != null) {
//       final chatQuery = await _firestore
//           .collection('chats')
//           .where('users', arrayContains: currentUser.uid)
//           .get();
//       final chats = chatQuery.docs
//           .where((chat) => chat['users'].contains(receiverId))
//           .toList();

//       if (chats.isNotEmpty) {
//         return chats.first.id;
//       }
//     }
//     return null;
//   }

//   Future<String> createChatRoom(receiverId) async {
//     final currentUser = _auth.currentUser;

//     if (currentUser != null) {
//       final chatRoom = await _firestore.collection('chats').add({
//         'users': [currentUser.uid, receiverId],
//         'lastMessage': '',
//         'timestamp': FieldValue.serverTimestamp(),
//       });
//       return chatRoom.id;
//     }
//     throw Exception('current user is Null');
//   }
// }
