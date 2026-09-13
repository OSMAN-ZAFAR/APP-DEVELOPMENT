import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  // =========================
  // CREATE
  // =========================
  Future<void> addUser(BuildContext context) async {
    try {
      await FirebaseFirestore.instance.collection('users').add({
        'name': 'Osman',
        'email': 'osman@example.com',
      });

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("User added successfully"),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Failed to add user"),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  // =========================
  // UPDATE
  // =========================
  void editUser(
    BuildContext context,
    String documentId,
    String currentName,
    String currentEmail,
  ) {
    final nameController = TextEditingController(
      text: currentName,
    );

    final emailController = TextEditingController(
      text: currentEmail,
    );

    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),

          title: Row(
            children: [
              Icon(
                Icons.edit_rounded,
                color: Colors.deepPurple,
              ),
              SizedBox(width: 10),
              Text("Edit User"),
            ],
          ),

          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Name",
                  prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              SizedBox(height: 15),

              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),

          actionsPadding: EdgeInsets.fromLTRB(20, 0, 20, 15),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();

                nameController.dispose();
                emailController.dispose();
              },
              child: Text("Cancel"),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              onPressed: () async {
                final name = nameController.text.trim();
                final email = emailController.text.trim();

                if (name.isEmpty || email.isEmpty) {
                  return;
                }

                try {
                  await FirebaseFirestore.instance
                      .collection('users')
                      .doc(documentId)
                      .update({
                    'name': name,
                    'email': email,
                  });

                  if (dialogContext.mounted) {
                    Navigator.of(dialogContext).pop();
                  }

                  nameController.dispose();
                  emailController.dispose();

                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "User updated successfully",
                        ),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                } catch (e) {
                  print("Update error: $e");
                }
              },

              child: Text("Update"),
            ),
          ],
        );
      },
    );
  }

  // =========================
  // DELETE
  // =========================
  Future<void> deleteUser(
    BuildContext context,
    String documentId,
  ) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(documentId)
          .delete();

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("User deleted successfully"),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } catch (e) {
      print("Delete error: $e");
    }
  }

  // =========================
  // DELETE CONFIRMATION
  // =========================
  void confirmDelete(
    BuildContext context,
    String documentId,
    String name,
  ) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),

          title: Text("Delete User?"),

          content: Text(
            "Are you sure you want to delete $name?",
          ),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
              child: Text("Cancel"),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),

              onPressed: () async {
                Navigator.of(dialogContext).pop();

                await deleteUser(
                  context,
                  documentId,
                );
              },

              child: Text("Delete"),
            ),
          ],
        );
      },
    );
  }

  // =========================
  // UI
  // =========================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),

      appBar: AppBar(
        elevation: 0,

        title: Text(
          "Users",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),

        centerTitle: false,

        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.deepPurpleAccent,
              ],
            ),
          ),
        ),
      ),

      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('users')
            .snapshots(),

        builder: (context, snapshot) {
          // Loading
          if (snapshot.connectionState ==
              ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.deepPurple,
              ),
            );
          }

          // Error
          if (snapshot.hasError) {
            return Center(
              child: Text(
                "Something went wrong",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red,
                ),
              ),
            );
          }

          final users = snapshot.data!.docs;

          // Empty
          if (users.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.people_outline,
                    size: 80,
                    color: Colors.grey,
                  ),

                  SizedBox(height: 15),

                  Text(
                    "No users found",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 5),

                  Text(
                    "Add your first user",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: EdgeInsets.all(16),

            itemCount: users.length,

            itemBuilder: (context, index) {
              final user = users[index];

              final name = user['name'];
              final email = user['email'];

              return Container(
                margin: EdgeInsets.only(bottom: 12),

                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.circular(18),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),

                child: Padding(
                  padding: EdgeInsets.all(14),

                  child: Row(
                    children: [
                      // USER AVATAR
                      CircleAvatar(
                        radius: 28,

                        backgroundColor:
                            Colors.deepPurple.shade100,

                        child: Text(
                          name.isNotEmpty
                              ? name[0].toUpperCase()
                              : "?",

                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(width: 15),

                      // USER INFORMATION
                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,

                          children: [
                            Text(
                              name,

                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 5),

                            Text(
                              email,

                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // EDIT
                      IconButton(
                        tooltip: "Edit",

                        icon: Icon(
                          Icons.edit_rounded,
                          color: Colors.deepPurple,
                        ),

                        onPressed: () {
                          editUser(
                            context,
                            user.id,
                            name,
                            email,
                          );
                        },
                      ),

                      // DELETE
                      IconButton(
                        tooltip: "Delete",

                        icon: Icon(
                          Icons.delete_outline_rounded,
                          color: Colors.red,
                        ),

                        onPressed: () {
                          confirmDelete(
                            context,
                            user.id,
                            name,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),

      // ADD USER
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.deepPurple,

        foregroundColor: Colors.white,

        onPressed: () async {
          await addUser(context);
        },

        icon: Icon(Icons.person_add_alt_1),

        label: Text(
          "Add User",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
