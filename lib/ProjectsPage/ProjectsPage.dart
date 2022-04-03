import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_mangement/ProjectsPage/OverviewScroll.dart';
import 'package:task_mangement/ProjectsPage/ProgressCard.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(242, 244, 255, 1),
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu_rounded,
                  size: 30,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 123, 0, 245),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: const Icon(Icons.person, color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Hello,",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                      TextSpan(
                        text: "Sriram!",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "Have a nice day!",
                  style: GoogleFonts.montserrat(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            OverView(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Progress",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ProgressCard(ProjectName: "Project", CompletedPercent: 30),
                ProgressCard(ProjectName: "Project", CompletedPercent: 30),
                ProgressCard(ProjectName: "Project", CompletedPercent: 30),
                ProgressCard(ProjectName: "Project", CompletedPercent: 30),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
