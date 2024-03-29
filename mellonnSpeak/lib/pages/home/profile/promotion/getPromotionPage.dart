import 'package:flutter/material.dart';
import 'package:mellonnSpeak/pages/home/profile/promotion/getPromotionPageProvider.dart';
import 'package:mellonnSpeak/providers/amplifyAuthProvider.dart';
import 'package:mellonnSpeak/providers/promotionDbProvider.dart';
import 'package:mellonnSpeak/utilities/standardWidgets.dart';
import 'package:provider/provider.dart';

bool gotPromotion = false;

class GetPromotionPage extends StatefulWidget {
  const GetPromotionPage({Key? key}) : super(key: key);

  @override
  State<GetPromotionPage> createState() => _GetPromotionPageState();
}

class _GetPromotionPageState extends State<GetPromotionPage> {
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Future onEnter() async {
    if (!context.read<GetPromotionPageProvider>().gettingPromotion) {
      if (context.read<GetPromotionPageProvider>().code.isEmpty || context.read<GetPromotionPageProvider>().code == '') {
        showDialog(
          context: context,
          builder: (BuildContext context) => OkAlert(
            title: 'Code is empty',
            text: 'You need to write a promotional code',
          ),
        );
      } else {
        context.read<GetPromotionPageProvider>().gettingPromotion = true;
        try {
          context.read<GetPromotionPageProvider>().promotion = await getPromotion(
            context.read<GetPromotionPageProvider>().code,
            context.read<AuthAppProvider>().freePeriods,
            true,
          );
          context.read<GetPromotionPageProvider>().discount = discountString(context.read<GetPromotionPageProvider>().promotion);
          context.read<GetPromotionPageProvider>().gettingPromotion = false;
          pageController.animateToPage(
            1,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        } catch (e) {
          context.read<GetPromotionPageProvider>().gettingPromotion = false;
          if (e.toString().contains('code no exist')) {
            showDialog(
              context: context,
              builder: (BuildContext context) => OkAlert(
                title: "Code doesn't exist",
                text: "The code you've entered doesn't exist in the system. Please make sure you've written the code correctly.",
              ),
            );
          } else if (e.toString().contains('code already used')) {
            showDialog(
              context: context,
              builder: (BuildContext context) => OkAlert(
                title: "Code already used",
                text: "You've already used this code, and you can't use this code again.",
              ),
            );
          } else {
            showDialog(
              context: context,
              builder: (BuildContext context) => OkAlert(
                title: "Something went wrong",
                text: "Something went wrong while trying to get the promotion. Please try again later.",
              ),
            );
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            BackGroundCircles(),
            Container(
              child: Column(
                children: [
                  standardAppBar(
                    context,
                    'Redeem promotional code',
                    'getPromotion',
                    true,
                  ),
                  Expanded(
                    child: PageView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: pageController,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              StandardBox(
                                margin: EdgeInsets.all(25),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Redeem Code',
                                        style: Theme.of(context).textTheme.headlineSmall,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(),
                                    TextFormField(
                                      onChanged: (textValue) {
                                        context.read<GetPromotionPageProvider>().code = textValue;
                                      },
                                      onFieldSubmitted: (value) async {
                                        await onEnter();
                                      },
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'This field is mandatory';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        labelText: 'Code',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await onEnter();
                                      },
                                      child: LoadingButton(
                                        text: 'Redeem code',
                                        isLoading: context.watch<GetPromotionPageProvider>().gettingPromotion,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              StandardBox(
                                margin: EdgeInsets.all(25),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Code redeemed!',
                                        style: Theme.of(context).textTheme.headlineSmall,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Row(
                                        children: [
                                          Text(
                                            'Discount: ',
                                            style: Theme.of(context).textTheme.headlineSmall,
                                          ),
                                          Text(
                                            context.read<GetPromotionPageProvider>().discount,
                                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await context.read<AuthAppProvider>().getUserAttributes();
                                        Navigator.pop(context);
                                      },
                                      child: StandardButton(
                                        text: 'Ok',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
