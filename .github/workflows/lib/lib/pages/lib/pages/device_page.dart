import 'package:flutter/material.dart';

class DevicePage extends StatelessWidget {
  const DevicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('设备与协调'),
        backgroundColor: Colors.green[700],
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.green, child: Text('A', style: TextStyle(color: Colors.white))),
              title: Text('侦察机（正常）'),
              trailing: Text('85%'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.green, child: Text('B', style: TextStyle(color: Colors.white))),
              title: Text('灭火机（正常）'),
              trailing: Text('72%'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.blue, child: Text('C', style: TextStyle(color: Colors.white))),
              title: Text('机器狗（任务中）'),
              trailing: Text('60%'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.green, child: Text('D', style: TextStyle(color: Colors.white))),
              title: Text('无人艇（正常）'),
              trailing: Text('90%'),
            ),
          ),
          SizedBox(height: 16),
          Text('🤖 AI协调建议', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text('到达时间：A机2分钟，B机5分钟，C机8分钟，D机12分钟。建议A机先出发定位火点。'),
            ),
          ),
        ],
      ),
    );
  }
}
