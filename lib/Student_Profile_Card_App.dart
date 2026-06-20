import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class StudentProfileCardApp extends StatefulWidget {
  const StudentProfileCardApp({super.key});

  @override
  State<StudentProfileCardApp> createState() => _StudentProfileCardAppState();
}

class _StudentProfileCardAppState extends State<StudentProfileCardApp> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  void showAlertDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: const [
            Icon(Icons.school, color: Colors.indigo),
            SizedBox(width: 10),
            Text("Student Details"),
          ],
        ),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.person, color: Colors.indigo),
                SizedBox(width: 10),
                Text("Name:", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 5),
                Text("Mike Rack"),
              ],
            ),
            SizedBox(height: 15),

            Row(
              children: [
                Icon(Icons.badge, color: Colors.indigo),
                SizedBox(width: 10),
                Text("ID:", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 5),
                Text("STU-2026-0042"),
              ],
            ),
            SizedBox(height: 15),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.apartment, color: Colors.indigo),
                SizedBox(width: 10),
                Text("Dept:", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 5),
                Expanded(child: Text("Computer Science & Engineering")),
              ],
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Close"),
          ),
        ],
      ),
    );
  }

  void showPresentSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        content: const Text("Mike Rack marked as Present ✅"),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Profile"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: isLoading
            ? Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Card(
                  child: SizedBox(width: 300.w, height: 350.h),
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(18.w),
                      child: Column(
                        children: [
                          SizedBox(height: 12.h),

                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                radius: 35.r,
                                backgroundColor: Colors.blue.shade100,
                                child: const Icon(Icons.person, size: 40),
                              ),

                              Positioned(
                                top: -2,
                                right: -5,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Text(
                                    "New",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 12.h),

                          Text(
                            "Mike Rack",
                            style: TextStyle(
                              fontSize: 22.sp,
                              color: const Color.fromARGB(255, 21, 37, 65),
                            ),
                          ),

                          SizedBox(height: 7.h),

                          Text(
                            "ID: STU-2026-0042",
                            style: TextStyle(color: Colors.grey.shade600),
                          ),

                          Text(
                            "Computer Science & Engineering",
                            style: const TextStyle(color: Colors.grey),
                          ),

                          SizedBox(height: 20.h),

                          SizedBox(
                            height: 40.h,
                            width: 240.w,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                              onPressed: showAlertDialog,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.info, size: 18),
                                  SizedBox(width: 4),
                                  Text("View Details"),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 12.h),

                          SizedBox(
                            height: 40.h,
                            width: 240.w,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.green,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  side: const BorderSide(color: Colors.green),
                                ),
                              ),
                              onPressed: showPresentSnackBar,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.check_circle_outline, size: 18),
                                  SizedBox(width: 4),
                                  Text("Mark Present"),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 12.h),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
