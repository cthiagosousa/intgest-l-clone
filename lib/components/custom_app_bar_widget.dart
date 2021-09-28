import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBarWidget extends PreferredSize {
  final String title;
  final String subtitle1;
  final String? subtitle2;
  final String imagePath;
  final String backgroundImagePath;

  CustomAppBarWidget({
    required this.title,
    required this.subtitle1,
    required this.imagePath,
    required this.backgroundImagePath,
    this.subtitle2,
  }) : super(
          preferredSize: Size.fromHeight(180),
          child: AppBar(
            centerTitle: true,
            elevation: 0,
            toolbarHeight: 180,
            title: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.cover,
              width: 150,
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.help,
                  size: 25,
                ),
                splashRadius: 23,
                onPressed: () {},
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(130),
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60),
                  ),
                  color: Colors.blue[900],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.blue.shade900, BlendMode.modulate),
                    image: NetworkImage(backgroundImagePath),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(imagePath),
                      ),
                    ),
                    SizedBox(width: 30),
                    Flexible(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FittedBox(
                            child: Text(
                              subtitle1,
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            title,
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.poppins(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (subtitle2 != null)
                            Text(
                              subtitle2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
}
