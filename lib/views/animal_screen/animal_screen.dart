import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';

class AnimalScreen extends StatelessWidget {
  const AnimalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 'image',
                child: Container(
                  height: MediaQuery.of(context).size.height * .5,
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          ModalRoute.of(context)!.settings.arguments as String,
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      iconButton(
                        icon: Platform.isIOS
                            ? Icons.chevron_left
                            : Icons.arrow_back,
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      iconButton(
                        icon: Icons.favorite_border_outlined,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Find your pet',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF121212),
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '''
There are a number of ways to care for petsat home, every animal is different, but in general the method can still be the same

If you have a pet, you definitely want your pet to be safe and comfortable at home.

In fact, it is not uncommon for owners to allow pets to roam in the house, usually dogs or cats.
''',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF121212),
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget iconButton({Function()? onPressed, required IconData icon}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 8),
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color(0xFFDFDFDF).withOpacity(.4),
            ),
            shape: MaterialStateProperty.all(const CircleBorder()),
            minimumSize: MaterialStateProperty.all<Size>(
              const Size(36, 36),
            ),
          ),
          onPressed: onPressed,
          child: Icon(
            icon,
            color: Colors.white,
            size: 22,
          ),
        ),
      ),
    );
  }
}
