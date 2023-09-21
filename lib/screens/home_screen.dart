import 'package:ammar_business_card/screens/github_screen.dart';
import 'package:ammar_business_card/screens/linkedin_screen.dart';
import 'package:ammar_business_card/widgets/custom_button.dart';
import 'package:ammar_business_card/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  static String id= 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor:const Color(0xFF2B475E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 112,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage('images/my_photo.jpg'),
            ),
          ),
          const Text(
            'Ammar Yasser',
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontFamily: 'Courgette',
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          const Divider(
            color: Colors.grey,
            indent: 45,
            endIndent: 45,
            thickness: 1,
            height: 10,
          ),
          const CustomListTileCard(
              icon:Icon(
                  Icons.phone,
                  color: Color(0xFF2B475E),
                  size: 32,
              ),
              data: '(+20) 1026488962'),
          const CustomListTileCard(
              icon:Icon(
                  Icons.email,
                color: Color(0xFF2B475E),
                size: 32,
              ),
              data: 'ammaryasser3016@gmail.com'),
          CustomButton(
            buttonText: 'Github',
            onTap: (){
              Navigator.pushNamed(context, GithubWebView.id);
            },
          ),
          CustomButton(
            buttonText: 'LinkedIn',
            onTap: (){
              Navigator.pushNamed(context, LinkedInWebView.id);
            },
          ),

        ],
      ),
    );
  }
}

