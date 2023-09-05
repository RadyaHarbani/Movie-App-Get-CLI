import 'package:flutter/material.dart';

//On Boarding Content
class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          image,
          width: 200,
        ),
        Spacer(),
        Container(
          width: 260,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: SizedBox(
            width: 290,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}

//List On Boarding Content
class OnBoardingContentList {
  final List<OnBoardingContent> list_on_board = [
    OnBoardingContent(
      image: 'assets/images/on_boarding1.png',
      title: "Apakah Anda pecinta film?",
      description: "Tmdb Movie adalah aplikasi yang cocok untuk Anda!",
    ),
    OnBoardingContent(
      image: 'assets/images/on_boarding4.png',
      title: "Mulai menonton film favorit Anda sekarang juga!",
      description:
          "Buat daftar film yang ingin Anda tonton dan dapatkan notifikasi saat film tersebut tersedia di bioskop atau layanan streaming.",
    ),
    OnBoardingContent(
      image: 'assets/images/on_boarding3.png',
      title: "Tonton film favorit Anda di mana saja!",
      description:
          "Berbagai film yang disajikan akan terus di update setiap harinya.",
    ),
  ];
}

//Dot Indicator
class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isActive
            ? Color.fromARGB(255, 0, 139, 128)
            : Color.fromARGB(255, 0, 139, 128).withOpacity(0.5),
      ),
    );
  }
}
