import 'package:flutter/material.dart';
import 'package:jobs_app/main_apps/app_styles.dart';
import 'package:jobs_app/main_apps/presentation/components/category_card.dart';
import 'package:jobs_app/main_apps/presentation/components/job_tile.dart';
import 'package:jobs_app/main_apps/presentation/detail_category.dart';
import 'package:jobs_app/main_apps/presentation/detail_job.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static List<Map<String, dynamic>> categoryData = [
    {
      'img': 'assets/web_dev.png',
      'title': 'Website\nDeveloper',
    },
    {
      'img': 'assets/mobile_dev.png',
      'title': 'Mobile\nDeveloper',
    },
    {
      'img': 'assets/app_designer.png',
      'title': 'App\nDesigner',
    },
    {
      'img': 'assets/content_writer.png',
      'title': 'Content\nWriter',
    },
    {
      'img': 'assets/video_grapher.png',
      'title': 'Video\nGrapher',
    },
  ];

  static List<Map<String, dynamic>> categorySection = [
    {
      'img': 'assets/bg_web.png',
      'title': 'Website Developer',
    },
    {
      'img': 'assets/bg_mobile.png',
      'title': 'Mobile Developer',
    },
    {
      'img': 'assets/bg_designer.png',
      'title': 'App Designer',
    },
    {
      'img': 'assets/bg_content.png',
      'title': 'Content Writer',
    },
    {
      'img': 'assets/bg_videographer.png',
      'title': 'Video Grapher',
    },
  ];

  static List<Map<String, dynamic>> jobsData = [
    {
      'img': 'assets/google_icon.png',
      'title': 'Front-End Developer',
      'company': 'Google',
    },
    {
      'img': 'assets/ig_icon.png',
      'title': 'UI Designer',
      'company': 'Instagram',
    },
    {
      'img': 'assets/fb_icon.png',
      'title': 'Data Scientist',
      'company': 'Facebook',
    },
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedMenu = 0;

  void _onTap(int index) {
    setState(() {
      _selectedMenu = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Howdy',
                        style: TextStyle(
                          color: AppStyles.kGreyColor,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Jason Powell',
                        style: TextStyle(
                          color: AppStyles.kBlackColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/user_pic.png',
                    width: 65,
                  )
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Hot Categories',
                style: TextStyle(
                  color: AppStyles.kBlackColor,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => DetailCategoryPage(
                            categoryImg: HomePage.categorySection[index]['img'],
                            categoryTitle: HomePage.categorySection[index]
                                ['title'],
                          ),
                        ),
                      );
                    },
                    child: CategoryCard(
                      img: HomePage.categoryData[index]['img'],
                      title: HomePage.categoryData[index]['title'],
                    ),
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 16),
                  itemCount: HomePage.categoryData.length,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Just Posted',
                style: TextStyle(
                  color: AppStyles.kBlackColor,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const DetailJobPage()));
                  },
                  child: JobsTile(
                    img: HomePage.jobsData[index]['img'],
                    title: HomePage.jobsData[index]['title'],
                    company: HomePage.jobsData[index]['company'],
                  ),
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemCount: HomePage.jobsData.length,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedMenu,
        onTap: _onTap,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: AppStyles.kPrimaryColor,
        unselectedItemColor: AppStyles.kGreyColor,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/icon_apps_outline.png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/icon_notification_outline.png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/icon_love_outline.png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/icon_user_outline.png'),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
