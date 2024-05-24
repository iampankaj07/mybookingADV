import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class PrivacyStatementsScreen extends StatelessWidget {
  const PrivacyStatementsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppBar(context),
              // SizedBox(height: 84.v),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Container(
                      width: 343.h,
                      margin: EdgeInsets.only(
                        left: 1.h,
                        right: 31.h,
                        bottom: 5.v,
                      ),
                      child: Text(
                        "Welcome to MyBookingADV! This Privacy Statement, together with our Cookie Statement and Terms and Conditions,  sets out the approach that we at MyBookingADV take with regards to the collection and handling of any identifiable information about you, and applies to all MyBookingADV websites (including any affiliated sites), mobile apps, and other services operated by us (hereafter collectively referred to as the “Services”).\n\nWe understand that providing information online involves a great deal of trust on your part. We take this trust very seriously and make it a high priority to ensure the security and confidentiality of the personal information you provide us when you visit our website or use our Services. Before providing us with your personal information, please read this Privacy Statement carefully to learn about our privacy practices.\n\nAbout This Privacy Statement and MyBookingADV\n\nWhen Does This Privacy Statement Apply?\n\nThis Privacy Statement applies to information about you as an identifiable person that Trip.com or its mobile application collects from, or about you. This Privacy Statement does not apply to anonymous data that cannot identify you in any way.\nThis website may contain links to third-party websites. MyBookingADV is not responsible for the privacy practices or the content of these third-party websites. We recommend that you carefully read the privacy statements of such sites.\n\nData Controller\n\nThe data controller of any and all information provided to or gathered by MyBookingADV and its mobile applications is MyBookingADV Travel Singapore Pte. Ltd., a limited liability company with its address at 72 Anson Road, #12-01, Anson House, Singapore (079911).\n\nAbout Your Personal Information and Uses\n\nWhat Personal Information Does Trip.com Hold on Me and Others?\n\n·         Information You Provide Us Directly\n\nMyBookingADV collects and uses the information you provide to us directly in order to provide you with the services you request. For example, you may provide us your name, gender, birthday, mobile number, email, and other information when you register a MyBookingADV account. When booking flight or train tickets, or using our car rental service, you may provide passenger names, genders, ID document numbers and the contact person’s name, mobile number, email and delivery address, as well as other information. When booking hotels and tickets for tourist attractions, you may provide the travelers’ names, contact person’s name, mobile number, and email, etc. When paying for travel products, you may provide your bank card number, the mobile number previously provided to the bank, or your credit card number, cardholder name, expiry date, etc.\n\nIn order for us to customize the services we provide you, we may also collect information about your travel plans and preferences which includes your meal requirements, departure date, check-in and check-out times, seat choice, ticket choice, insurance choice, and your selection of other services (such as car rental, attraction tickets, and travel guides, etc.) provided by MyBookingADV.\n\nIf you need to get in touch with our customer service team, or reach out to us through other means (such as through social media) we will collect information from you there too, such as your name and contact information. This includes recording phone conversations, when you call us and when you answer our calls.\n\n\nWe would like to remind you that it is your responsibility to ensure that the person or people whose personal information you have provided are aware that you’ve done so, and have agreed to your sharing of their personal information with MyBookingADV for these purposes.\n·         Information We Collect Automatically\n\nMyBookingADV collects some information about you automatically. Specifically:\n\nLog information, which refers to information that the system may automatically collect through cookies, a web beacon, or other channels when you use our services, including:\n\no    Device information or software information, such as your IP address, software version and device identifier (IDFA / IMEI) of the mobile device you use, and configurations of the web browser or mobile device you use to access our services.",
                        maxLines: 89,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallBlack900_1,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      // height: 81.v,
      centerTitle: true,
      // leading: IconButton(
      //   icon: Icon(Icons.arrow_back),
      //   onPressed: () {
      //     onTapArrowleftone(context);
      //     Navigator.pop(context);
      //   },
      // ),
      title: Text(
        "Privacy Statements",
        style:
            theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w400),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.more_vert),
        )
      ],
      // styleType: Style.bgFill,
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
