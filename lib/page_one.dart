import 'package:flutter/material.dart';
import 'package:flutter_application_3/pagetwo.dart';

class PageONe extends StatelessWidget {
  const PageONe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.015,
                  width: MediaQuery.of(context).size.width * 0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.015,
                  width: MediaQuery.of(context).size.width * 0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 241, 203, 236),
                    border: Border.all(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.015,
                  width: MediaQuery.of(context).size.width * 0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 226, 175, 228),
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Image.asset(
            "assets/imgone.png",
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 39,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Un-e coach en flnances \nreglemente-e par I'AMF,\nrien que pour tol !",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "L'AMF c'ost L'Autorite des marchies fianciers,elle \nest publique et independant, et veille a la protection \nde l'epargne investie en produits finaciers,a \nl'information des investisseurs et au bon \n fonctionement des marches",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PageTwo()),
                  );
                },
                child: Stack(
                  children: [
                    Container(
                      height: 49,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      left: 1,
                      child: Container(
                        height: 47,
                        width: MediaQuery.of(context).size.width * 0.8,
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
                              style: TextStyle(fontWeight: FontWeight.w600),
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
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "passer",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
            ),
          ),
          Center(
            child: Container(
              height: 1,
              width: 50,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
