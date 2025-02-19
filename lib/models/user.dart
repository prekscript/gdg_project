import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String? id;
  final String? username;
  final String? email;
  final String? photoUrl;
  final String? displayName;
  final String? bio;
  final String? phone;

  User({
    this.id,
    this.username,
    this.email,
    this.photoUrl,
    this.displayName,
    this.bio,
    this.phone,
  });

  factory User.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>?; // Explicitly casting

    return User(
      id: data?['id'] ?? '',
      email: data?['email'] ?? '',
      username: data?['username'] ?? '',
      photoUrl: data?['photoUrl'] ?? '',
      displayName: data?['displayName'] ?? '',
      bio: data?['bio'] ?? '',
      phone: data?['phone'] ?? '',
    );
  }
}
