import 'package:flutter/material.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/constant.dart';

class StudentAffidavitView extends StatefulWidget {
  static String routeName = 'StudentAffidavitView';

  @override
  State<StudentAffidavitView> createState() => _StudentAffidavitViewState();
}

class _StudentAffidavitViewState extends State<StudentAffidavitView> {

  final PageController _pageController = PageController();
  int currentpage = 0;
  final int totalpages = 2;

  void _goToPage(int page){
    if(page>= totalpages){
      page = 0;
    }
    else if(page<0){
      page =  totalpages-1;
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
      appBar: AppBar(
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
                    onPressed: () => _goToPage(currentpage-1),
                    icon: Icon(Icons.chevron_left),
                ),
                Text(
                  '${currentpage+1} of $totalpages',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                IconButton(
                    onPressed: () => _goToPage(currentpage+1),
                    icon: Icon(Icons.chevron_right),
                ),
              ],
            )
          ],
        )
      ),
      body: Container(
        color: kOtherColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                  child: PageView(
                    scrollDirection: Axis.vertical,
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState((){
                        currentpage = index;
                      });
                    },
                    children: [
                      Center(
                        child: SizedBox(
                          height: 500,
                          width: double.infinity,
                          child: Image.asset(
                            'assets/AFD1.jpeg',
                          ),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          height: 500,
                          width: double.infinity,
                          child: Image.asset(
                            'assets/aFD2.jpeg',
                          ),
                        ),
                      )
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
