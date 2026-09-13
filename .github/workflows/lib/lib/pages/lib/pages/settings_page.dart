import 'package:flutter/material.dart';
import 'tutorial_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('设置'),
        backgroundColor: Colors.green[700],
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.school, color: Colors.green),
            title: const Text('操作教程', style: TextStyle(fontSize: 18)),
            subtitle: const Text('小白也能看懂的使用指南'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const TutorialPage()),
            ),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.info, color: Colors.blue),
            title: Text('系统版本'),
            subtitle: Text('v1.0.0'),
          ),
          const ListTile(
            leading: Icon(Icons.security, color: Colors.blue),
            title: Text('数据安全'),
            subtitle: Text('所有数据存储于镇政府服务器，加密传输'),
          ),
          const ListTile(
            leading: Icon(Icons.phone, color: Colors.blue),
            title: Text('技术支持'),
            subtitle: Text('西连镇应急办'),
          ),
        ],
      ),
    );
  }
}
