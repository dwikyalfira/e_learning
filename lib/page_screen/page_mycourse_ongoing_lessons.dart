import 'package:e_learning/page_screen/page_inbox_chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Course {
  final String title;
  final String lenght;
  final String description;

  Course({
    required this.title,
    required this.lenght,
    required this.description,
  });
}

class CoursesPageContent extends StatelessWidget {
  final List<Course> courses = [
    Course(
      title: 'Flutter Development',
      lenght: 'John Doe',
      description: 'Learn Flutter development from scratch.',
    ),
    Course(
      title: 'Python Programming',
      lenght: 'Jane Smith',
      description: 'Master Python programming language.',
    ),
    // Add more courses as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: courses.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          elevation: 2.0,
          child: ListTile(
            title: Text(courses[index].title),
            subtitle: Text(' ${courses[index].lenght}'),
            trailing: IconButton(
              icon: Icon(Icons.play_circle_fill),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Center(
                      child: AlertDialog(
                        backgroundColor: Colors.white,
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("/images/coursecompleted.png"),
                            Text(
                              'Course Completed',
                              style: TextStyle(
                                fontWeight: FontWeight.bold, // Making the text bold
                                fontSize: 18.0, // Setting the font size
                              ),
                            ),
                            Text('Complete your course. Please write a review.'),
                            SizedBox(height: 16.0),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber), // 5-star icon
                                Icon(Icons.star, color: Colors.amber),
                                Icon(Icons.star, color: Colors.amber),
                                Icon(Icons.star, color: Colors.amber),
                                Icon(Icons.star, color: Colors.amber),
                              ],
                            ),
                            SizedBox(height: 16.0),
                            ElevatedButton(
                              onPressed: () {
                                // Add functionality to navigate to the review page
                              },
                              child: Text(
                                  'Write a Review',
                                style: TextStyle(
                                  color: Colors.black
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            onTap: () {
              // Add navigation to the course details page
            },
          ),
        );
      },
    );
  }
}

class PageMyCourseOngoingLessons extends StatelessWidget {
  const PageMyCourseOngoingLessons({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Courses',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PageInboxChat()));
          },
        ),
      ),
      body: Column(
        children: [
          _buildSearchBar(context),
          Expanded(
            child: CoursesPageContent(), // Add the CoursesPageContent widget here
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 5.0, // Add elevation for shadow
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PageMyCourseOngoingVideo(),
              ));
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xFF0961F5),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Continue Courses',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(width: 8.0),
                Container(
                  width: 24.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.arrow_forward_outlined, size: 16.0, color: Color(0xFF0961F5)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for ...',
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade800,
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: EdgeInsets.all(8.0),
            child: Icon(
              CupertinoIcons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class PageMyCourseOngoingVideo extends StatelessWidget {
  const PageMyCourseOngoingVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Force landscape orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make app bar transparent
        elevation: 0, // Remove app bar elevation
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Set icon color to white
          onPressed: () {
            // Restore preferred orientations when navigating back
            SystemChrome.setPreferredOrientations([
              DeviceOrientation.portraitUp,
              DeviceOrientation.portraitDown,
              DeviceOrientation.landscapeLeft,
              DeviceOrientation.landscapeRight,
            ]);
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'WordPress Website Development',
          style: TextStyle(color: Colors.white), // Set text color to white
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white), // Set icon color to white
            onPressed: () {
              // Add functionality for more options
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            bottom: 60, // Reserve space for timeline
            child: VideoPlayerWidget(), // Your video player widget
          ),
          Positioned(
            left: 16,
            bottom: 16,
            child: Text(
              '00:00', // Playback time
              style: TextStyle(color: Colors.white), // Set text color to white
            ),
          ),
          Positioned(
            left: 16,
            bottom: 32,
            child: Container(
              width: 150,
              height: 2,
              color: Colors.white, // Timeline
            ),
          ),
          Positioned(
            left: 16,
            bottom: 20,
            child: Container(
              width: 4,
              height: 20,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.grey], // Volume control gradient
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: Text(
              '16:9', // Aspect ratio indicator
              style: TextStyle(color: Colors.white), // Set text color to white
            ),
          ),
        ],
      ),
    );
  }
}

class VideoPlayerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9, // Example aspect ratio
      child: Container(
        color: Colors.grey, // Placeholder for video player
      ),
    );
  }
}
