import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Welcome back, Samantha!',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF979797),
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/avatar.png',
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Welcome to the pet shop,\nlet\'s find your pet',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF121212),
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 295,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 20),
                  children: [
                    ...List.generate(15, (index) {
                      if (index % 2 == 0) {
                        return Container(
                          height: 295,
                          width: 242,
                          padding: const EdgeInsets.all(22),
                          margin: const EdgeInsets.only(right: 20),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/dog-02.png',
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: const Text(
                            '7 Ways to take\ncare of your\npet',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                height: 1.5,
                                fontWeight: FontWeight.w600),
                          ),
                        );
                      }
                      return Container(
                        height: 295,
                        width: 242,
                        padding: const EdgeInsets.all(22),
                        margin: const EdgeInsets.only(right: 20),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/dog-01.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: const Text(
                          'Biggest cat\ncommunity',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              height: 1.5,
                              fontWeight: FontWeight.w600),
                        ),
                      );
                    })
                  ],
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    button(
                      icon: Image.asset(
                        'assets/images/animal.png',
                      ),
                      title: 'Animal',
                    ),
                    button(
                      icon: Image.asset(
                        'assets/images/hearth.png',
                      ),
                      title: 'Grooming',
                    ),
                    button(
                      icon: Image.asset(
                        'assets/images/food.png',
                      ),
                      title: 'Food',
                    ),
                    button(
                      icon: Image.asset(
                        'assets/images/cone.png',
                      ),
                      title: 'Training',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(16).copyWith(left: 30),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/dog-03.png',
                      ),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text.rich(
                      TextSpan(
                        text: 'Become a member,\n',
                        children: [
                          TextSpan(
                            text: 'get a discount',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF121212),
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFF28633),
                        ),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Join Now',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget button({required Widget icon, required String title}) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(bottom: 24),
          decoration: BoxDecoration(
            color: const Color(0xFFECF5FC),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFFECF5FC),
                ),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                overlayColor: MaterialStateProperty.all<Color>(
                  const Color(0xFF43667E).withOpacity(.2),
                ),
                elevation: MaterialStateProperty.all(0)),
            child: icon,
          ),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 14, color: Color(0xFF121212)),
        )
      ],
    );
  }
}
