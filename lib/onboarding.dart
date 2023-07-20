import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/onboarding.dto.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final List<OnboardingDto> onboardingList = [
    OnboardingDto(
      imageSrc: 'assets/img_one.png',
      title: "Lorem ipsum dolor sit amet",
      subtitle:
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque laboriosam hic totam dolorem expedita cum laudantium sed. Nesciunt tempore natus vitae minima soluta, dolorem accusantium at ipsum. Nihil, aspernatur architecto?",
    ),
    OnboardingDto(
        imageSrc: 'assets/img_two.png',
        title: "Lorem ipsum dolor sit amet",
        subtitle:
            "Laborum quod nam porro, fugiat repellat rem! Aliquam, repudiandae molestiae! Recusandae dignissimos alias distinctio quae reprehenderit reiciendis, repudiandae sapiente, corporis non nostrum aliquam eveniet, in perspiciatis doloribus. At, nobis facere."),
    OnboardingDto(
        imageSrc: 'assets/img_three.png',
        title: "Lorem ipsum dolor sit amet",
        subtitle:
            "Earum labore illum nulla reiciendis facere vel aliquam quod eaque porro ducimus libero a molestias dolor et dolorum quibusdam consequatur cum, doloremque obcaecati sit explicabo! Aspernatur incidunt amet dolor maxime!"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: PageView.builder(
          itemCount: onboardingList.length,
          itemBuilder: (pageCtx, index) {
            return Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 15,
                  child: Center(
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.275,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemCount: onboardingList.length,
                      itemBuilder: (ctx, i) {
                        return PageIndicatorWidget(isActive: i <= index);
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    onboardingList[index].imageSrc,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          onboardingList[index].title,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          onboardingList[index].subtitle,
                          style: const TextStyle(),
                          textAlign: TextAlign.left,
                        ),
                        const Expanded(
                          child: SizedBox(),
                        ),
                        GestureDetector(
                          onTap: () {
                            log("LOL");
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 49,
                                width: MediaQuery.of(context).size.width * 0.87,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black,
                                ),
                              ),
                              Positioned(
                                left: 1,
                                child: Container(
                                  height: 47,
                                  width:
                                      MediaQuery.of(context).size.width * 0.87,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "suivant",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Center(
                          child: Text(
                            "passer",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.amber,
                              decorationThickness: 2,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class PageIndicatorWidget extends StatelessWidget {
  final bool isActive;
  const PageIndicatorWidget({
    required this.isActive,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: MediaQuery.of(context).size.height * 0.015,
      width: MediaQuery.of(context).size.width * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color:
            isActive ? Colors.black : const Color.fromARGB(255, 226, 175, 228),
      ),
    );
  }
}
