import 'package:flutter/material.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/constant.dart';

class SemestartRegistrationView extends StatefulWidget {
  static String routeName = 'SemestartRegistrationView';

  @override
  State<SemestartRegistrationView> createState() => _SemestartRegistrationViewState();
}

class _SemestartRegistrationViewState extends State<SemestartRegistrationView> {

  final PageController _pageController = PageController();
  int currentPage = 0;
  final int totalPages = 2;

  void _goToPage(int page) {
    if (page >= totalPages) {
      page = 0;
    } else if (page < 0) {
      page = totalPages - 1;
    }

    _pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: kTextWhiteColor,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'File',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontSize: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.chevron_left),
                  onPressed: () => _goToPage(currentPage - 1),
                ),
                Text(
                  "${currentPage + 1} of $totalPages",
                  style: TextStyle(fontSize: 18),
                ),
                IconButton(
                  icon: Icon(Icons.chevron_right),
                  onPressed: () => _goToPage(currentPage + 1),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        color: kTextWhiteColor,
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  scrollDirection: Axis.vertical,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  children: [
                    Center(
                      child:  SizedBox(
                         height: 500,
                         width: double.infinity,
                        child: Image.asset('assets/Class_Reg1.jpeg'),
                     ),
                    ),
                    Center(
                      child:  SizedBox(
                        height: 500,
                        width: double.infinity,
                        child: Image.asset('assets/Class_Reg2.jpeg'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
