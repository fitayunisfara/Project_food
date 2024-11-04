import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gambar latar belakang
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.teal.shade300, Colors.teal.shade600],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // Konten utama
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50), // Ruang untuk status bar
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://th.bing.com/th?id=OIP.Q00xnUTfX7iYfEsTtJdjngHaF7&w=279&h=223&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2',
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Fita Yunisfara',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'NIM: 22TI005',
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Kelas: TI A1',
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Alamat: Dompu',
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                  SizedBox(height: 32),
                  _buildActionCard(
                    icon: Icons.person,
                    title: 'Tentang Saya',
                    onTap: () {
                      // Aksi ketika diklik
                    },
                  ),
                  SizedBox(height: 16),
                  _buildActionCard(
                    icon: Icons.settings,
                    title: 'Pengaturan',
                    onTap: () {
                      // Aksi ketika diklik
                    },
                  ),
                  SizedBox(height: 16),
                  _buildActionCard(
                    icon: Icons.logout,
                    title: 'Keluar',
                    onTap: () {
                      // Aksi ketika diklik
                    },
                  ),
                  SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol diklik
                    },
                    child: Text('Edit Profile'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal[700],
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionCard(
      {required IconData icon, required String title, void Function()? onTap}) {
    return Card(
      elevation: 4,
      color: Colors.pinkAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Menambahkan sudut melengkung
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        onTap: onTap,
      ),
    );
  }
}
