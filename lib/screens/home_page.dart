import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Permission App"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await openAppSettings();
            },
            icon: const Icon(Icons.settings),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                var status = Permission.camera.status;
                if (await status.isDenied) {
                  Permission.camera.request();
                } else if (await status.isGranted) {
                  const SnackBar(
                    duration: Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    content: Text("Camera Permission Already Exists."),
                  );
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: h * 0.06,
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "CAMERA",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                var status = Permission.calendar.status;
                if (await status.isDenied) {
                  Permission.calendar.request();
                } else if (await status.isGranted) {
                  const SnackBar(
                    duration: Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    content: Text("Calendar Permission Already Exists."),
                  );
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: h * 0.06,
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "CALENDAR",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                var status = Permission.phone.status;
                if (await status.isDenied) {
                  Permission.phone.request();
                } else if (await status.isGranted) {
                  const SnackBar(
                    duration: Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    content: Text("Phone Permission Already Exists."),
                  );
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: h * 0.06,
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "PHONE",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                var status = Permission.location.status;
                if (await status.isDenied) {
                  Permission.location.request();
                } else if (await status.isGranted) {
                  const SnackBar(
                    duration: Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    content: Text("Location Permission Already Exists."),
                  );
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: h * 0.06,
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "LOCATION",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                var status = Permission.audio.status;
                if (await status.isDenied) {
                  Permission.audio.request();
                } else if (await status.isGranted) {
                  const SnackBar(
                    duration: Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    content: Text("Audio Permission Already Exists."),
                  );
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: h * 0.06,
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "AUDIO",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                var status = Permission.bluetooth.status;
                if (await status.isDenied) {
                  Permission.bluetooth.request();
                } else if (await status.isGranted) {
                  const SnackBar(
                    duration: Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    content: Text("Bluetooth Permission Already Exists."),
                  );
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: h * 0.06,
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "BLUETOOTH",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                var status = Permission.contacts.status;
                if (await status.isDenied) {
                  Permission.contacts.request();
                } else if (await status.isGranted) {
                  const SnackBar(
                    duration: Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    content: Text("Contacts Permission Already Exists."),
                  );
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: h * 0.06,
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "CONTACTS",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                var status = Permission.bluetoothScan.status;
                if (await status.isDenied) {
                  Permission.bluetoothScan.request();
                } else if (await status.isGranted) {
                  const SnackBar(
                    duration: Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    content: Text("Notification Permission Already Exists."),
                  );
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: h * 0.06,
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "NOTIFICATION",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                var status = Permission.videos.status;
                if (await status.isDenied) {
                  Permission.videos.request();
                } else if (await status.isGranted) {
                  const SnackBar(
                    duration: Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    content: Text("Videos Permission Already Exists."),
                  );
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: h * 0.06,
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "VIDEOS",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                var status = Permission.sms.status;
                if (await status.isDenied) {
                  Permission.sms.request();
                } else if (await status.isGranted) {
                  const SnackBar(
                    duration: Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    content: Text("SMS Permission Already Exists."),
                  );
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: h * 0.06,
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "SMS",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

// listTile(name, icon, val) {
//   return ListTile(
//     onTap: () {},
//     title: Text(name),
//     leading: Icon(icon),
//     trailing: Checkbox(
//       value: val,
//       onChanged: (val) {},
//     ),
//   );
// }
}
