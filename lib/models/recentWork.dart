class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork(
      {required this.id,
      required this.image,
      required this.category,
      required this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "AI-Powered Voice Assistant Flutter Radio App",
    category: "AI Radio",
    image: "assets/images/AIRadio.png",
  ),
  RecentWork(
    id: 2,
    title: "Wallpaper app with search and download option.",
    category: "GlanceAt",
    image: "assets/images/glanceAt.jpeg",
  ),
  RecentWork(
    id: 3,
    title: "Integrated payments in flutter app with Razorpay Payment Gateway.",
    category: "Razor Pay",
    image: "assets/images/razorPay.jpeg",
  ),
  RecentWork(
    id: 4,
    title:
        "Reminds your meetings/classes and redirect you to respective website.",
    category: "Meeting Reminder",
    image: "assets/images/meetingReminder.jpeg",
  ),
];
