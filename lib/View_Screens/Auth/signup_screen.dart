import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pandalive/Routes/app_routes.dart';
import 'package:pandalive/Utils/app_colours.dart';
import 'package:pandalive/Utils/app_images.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';
import 'package:pandalive/Widgets/Buttons/elevatedbutton0.dart';
import 'package:pandalive/Widgets/Buttons/icontbutton0.dart';
import 'package:pandalive/Widgets/Buttons/textbutton0.dart';
import 'package:pandalive/Widgets/TextFields/textfield0.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController userController = TextEditingController();
  TextEditingController adressController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  File? image;
  //function to pick image
  Future<void> profileimage() async {
    final XFile? imagepic = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      image = File(imagepic!.path);
      if (image == null) {
        return;
      }
      print("here is image path$image");
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = HeightWidth.screenHeight(context);
    double width = HeightWidth.screenWidth(context);

    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Create Account",
            style: AppStyle.logoText.copyWith(
              fontSize: 18,
              letterSpacing: 5,
              decoration: TextDecoration.underline,
              decorationColor: Colors.amber,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),

          backgroundColor: Colors.black,
          leading: Iconbutton0(
            image: Icon(Icons.arrow_back_ios_new, color: Colors.white),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: image != null
                        ? DecorationImage(
                            image: FileImage(image!),
                            fit: BoxFit.cover,
                          )
                        : null,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.amber),
                  ),
                  child: Iconbutton0(
                    image: image == null
                        ? Icon(Icons.add_a_photo_outlined, color: Colors.amber)
                        : SizedBox.shrink(),
                    onPressed: () async {
                      await profileimage();
                    },
                  ),
                ),
                Gap(height * 0.03),
                Textfield0(
                  controller: emailController,
                  labeltext: Text("Enter Email"),
                  icons: Image(image: AssetImage(AppImages.message)),
                  keyboardtypee: TextInputType.emailAddress,
                ),
                Gap(height * 0.016),
                Textfield0(
                  controller: passwordController,
                  labeltext: Text("Enter Password"),
                  icons: Image(image: AssetImage(AppImages.lock)),
                  keyboardtypee: TextInputType.number,
                ),
                Gap(height * 0.016),
                Textfield0(
                  controller: cpasswordController,
                  labeltext: Text("Confirm Password"),
                  icons: Image(image: AssetImage(AppImages.lock)),
                  keyboardtypee: TextInputType.number,
                ),

                Gap(height * 0.016),
                Textfield0(
                  controller: nameController,
                  labeltext: Text("Enter Full name"),
                  icons: Icon(
                    CupertinoIcons.profile_circled,
                    size: 38,
                    color: AppColours.iconcolours,
                  ),
                  keyboardtypee: TextInputType.name,
                ),
                Gap(height * 0.016),
                Textfield0(
                  controller: userController,
                  labeltext: Text("Enter Username"),
                  icons: Image(image: AssetImage(AppImages.at)),
                  keyboardtypee: TextInputType.name,
                ),
                Gap(height * 0.016),
                Textfield0(
                  controller: adressController,
                  labeltext: Text("Enter Adress"),
                  icons: Icon(
                    CupertinoIcons.house_alt,
                    size: 30,
                    color: AppColours.iconcolours,
                  ),
                  keyboardtypee: TextInputType.number,
                ),
                Gap(height * 0.016),
                Textfield0(
                  controller: dobController,
                  labeltext: Text("Enter DOB-Ex 09/10/2000"),
                  icons: Icon(
                    Icons.calendar_month,
                    size: 38,
                    color: AppColours.iconcolours,
                  ),
                  keyboardtypee: TextInputType.datetime,
                ),

                Gap(height * 0.03),
                Elevatedbutton0(
                  w: width * 0.88,
                  h: height * 0.065,

                  bgColour: Colors.amber,
                  onPressed: () {
                    Get.toNamed(AppRoutes.foundermsg);
                  },
                  text: 'Login',
                ),
                Gap(height * 0.028),

                Image(image: AssetImage(AppImages.or)),
                Gap(height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Iconbutton0(
                      image: Image.asset(AppImages.google),
                      onPressed: () {
                        Get.toNamed(AppRoutes.foundermsg);
                      },
                    ),
                    Iconbutton0(
                      image: Image.asset(AppImages.facebook),
                      onPressed: () {
                        Get.toNamed(AppRoutes.foundermsg);
                      },
                    ),
                  ],
                ),
                Gap(height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Textbutton0(
                      text: "LogIn",
                      onPressed: () {
                        Get.toNamed(AppRoutes.foundermsg);
                      },
                      textcolor: Colors.amber,
                    ),
                  ],
                ),
                Gap(10),
              ],
            ),
          ),
        ),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}
