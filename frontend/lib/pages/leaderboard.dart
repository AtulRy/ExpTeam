import 'package:flutter/material.dart';

class leaderboard extends StatelessWidget {
  const leaderboard({Key? key})
      : super(
          key: key,
        );

  set mediaQueryData(MediaQueryData mediaQueryData) {}

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    var CustomTextStyles;
    var ImageConstant;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 1),
          child: Column(
            children: [
              _buildStackOne(context),
              SizedBox(height: 26),
              SizedBox(
                height: 615,
                width: 418,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImageRemovebgPreview,
                            height: 47,
                            width: 37,
                            // alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(right: 79),
                          ),
                          SizedBox(height: 9),
                          SizedBox(
                            height: 559,
                            width: 418,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 2,
                                    ),
                                    // decoration: BoxDecoration(
                                    //   image: DecorationImage(
                                    //     image: fs.Svg(
                                    //       ImageConstant.imgGroup14,
                                    //     ),
                                    //     fit: BoxFit.cover,
                                    //   ),
                                    // ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildRowLeaderboard(context),
                                        SizedBox(height: 6),
                                        _buildRowPointsCounter(context),
                                        SizedBox(height: 8),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 1,
                                            right: 31,
                                          ),
                                          child: _buildRowPointsCounterTwo(
                                            context,
                                            four: "03",
                                            uIUXFortyTwo: "  WEB-41",
                                            pointsCounter: "24 Points",
                                          ),
                                        ),
                                        SizedBox(height: 11),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 1,
                                            right: 31,
                                          ),
                                          child: _buildRowPointsCounterTwo(
                                            context,
                                            four: "04",
                                            uIUXFortyTwo: "  UI/UX-42",
                                            pointsCounter: "24 Points",
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 1,
                                            right: 31,
                                          ),
                                          child: _buildRowPointsCounterTwo(
                                            context,
                                            four: "05",
                                            uIUXFortyTwo: "  AIML-42",
                                            pointsCounter: "22 Points",
                                          ),
                                        ),
                                        SizedBox(height: 7),
                                        _buildRowPointsCounterThree(context),
                                        SizedBox(height: 9),
                                        _buildRowPoints(context),
                                        SizedBox(height: 8),
                                        _buildRowPointsCounterFour(context),
                                        SizedBox(height: 7),
                                        _buildRowPointsCounterFive(context),
                                        SizedBox(height: 8),
                                        _buildRowPointsCounterSix(context),
                                        SizedBox(height: 4),
                                        _buildRowPointsCounterSeven(context),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 46,
                                      right: 147,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 558,
                                          child: VerticalDivider(
                                            width: 2,
                                            thickness: 2,
                                            endIndent: 1,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 557,
                                          child: VerticalDivider(
                                            width: 2,
                                            thickness: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "WINNERS :  WEB- 42",
                        style: CustomTextStyles.headlineLargeWhiteA700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackOne(BuildContext context) {
    var AppDecoration;
    var appTheme;
    var theme;
    var ImageConstant;
    var BorderRadiusStyle;
    return SizedBox(
      height: 235,
      width: 429,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 29,
              ),
              // decoration: AppDecoration.fillBlueGray,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 4,
                    width: 37,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        // color: appTheme.gray300,
                        ),
                  ),
                  SizedBox(height: 2),
                  Container(
                    height: 4,
                    width: 37,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      // color: appTheme.gray300,
                      borderRadius: BorderRadius.circular(
                        2,
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Container(
                    height: 4,
                    width: 37,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        // color: appTheme.gray300,
                        ),
                  ),
                  SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Leaderboard",
                        // style: theme.textTheme.displayMedium,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant,
                        height: 58,
                        width: 58,
                        margin: EdgeInsets.only(
                          left: 8,
                          top: 10,
                          bottom: 6,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 45),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                left: 12,
                top: 178,
              ),
              child: IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 133,
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      // decoration: AppDecoration.fillBluegray30001.copyWith(
                      //   borderRadius: BorderRadiusStyle.roundedBorder14,
                      // ),
                      child: Text(
                        "ALL",
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    Container(
                      width: 133,
                      margin: EdgeInsets.only(left: 16),
                      padding: EdgeInsets.symmetric(horizontal: 26),
                      // decoration: AppDecoration.fillBluegray30001.copyWith(
                      //   borderRadius: BorderRadiusStyle.roundedBorder14,
                      // ),
                      child: Text(
                        "WEB",
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    Container(
                      width: 133,
                      margin: EdgeInsets.only(left: 16),
                      padding: EdgeInsets.symmetric(
                        horizontal: 11,
                        vertical: 1,
                      ),
                      // decoration: AppDecoration.fillBluegray30001.copyWith(
                      //   borderRadius: BorderRadiusStyle.roundedBorder14,
                      // ),
                      child: Text(
                        "UI/UX",
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    Container(
                      width: 133,
                      margin: EdgeInsets.only(left: 16),
                      padding: EdgeInsets.symmetric(
                        horizontal: 11,
                        vertical: 3,
                      ),
                      // decoration: AppDecoration.fillBluegray30001.copyWith(
                      //   borderRadius: BorderRadiusStyle.roundedBorder14,
                      // ),
                      child: Text(
                        "AIML",
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    Container(
                      width: 133,
                      margin: EdgeInsets.only(left: 16),
                      padding: EdgeInsets.all(4),
                      // decoration: AppDecoration.fillBluegray30001.copyWith(
                      //   borderRadius: BorderRadiusStyle.roundedBorder14,
                      // ),
                      child: Text(
                        "GAME",
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    Container(
                      width: 133,
                      margin: EdgeInsets.only(left: 16),
                      padding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 6,
                      ),
                      // decoration: AppDecoration.fillBluegray30001.copyWith(
                      //   borderRadius: BorderRadiusStyle.roundedBorder14,
                      // ),
                      child: Text(
                        "APP",
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowLeaderboard(BuildContext context) {
    var theme;
    return Padding(
      padding: EdgeInsets.only(
        left: 1,
        right: 27,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2,
              bottom: 3,
            ),
            child: Text(
              "01",
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Spacer(
            flex: 24,
          ),
          Text(
            "  WEB-42",
            style: theme.textTheme.headlineMedium,
          ),
          Spacer(
            flex: 75,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Text(
              "28 Points",
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowPointsCounter(BuildContext context) {
    var theme;
    return Padding(
      padding: EdgeInsets.only(right: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4),
            child: Text(
              "02",
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 29),
            child: Text(
              "  UI/UX-41",
              style: theme.textTheme.headlineMedium,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6,
              bottom: 2,
            ),
            child: Text(
              "27.25 Points",
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowPointsCounterThree(BuildContext context) {
    var theme;
    return Padding(
      padding: EdgeInsets.only(
        left: 1,
        right: 31,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Text(
              "06",
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              "  GAME-41",
              style: theme.textTheme.headlineMedium,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Text(
              "20 Points",
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowPoints(BuildContext context) {
    var theme;
    return Padding(
      padding: EdgeInsets.only(
        left: 1,
        right: 3,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              "07",
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 27),
            child: Text(
              "  UI/UX-43",
              style: theme.textTheme.headlineMedium,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 2,
              bottom: 6,
            ),
            child: Text(
              "16.75 Points ",
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowPointsCounterFour(BuildContext context) {
    var theme;
    return Padding(
      padding: EdgeInsets.only(
        left: 1,
        right: 37,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              "08",
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 22),
            child: Text(
              "  APP-41",
              style: theme.textTheme.headlineMedium,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              "12 Points",
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowPointsCounterFive(BuildContext context) {
    var theme;
    return Padding(
      padding: EdgeInsets.only(
        left: 1,
        right: 21,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              "09",
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "AIML-41",
              style: theme.textTheme.headlineMedium,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 2,
              bottom: 6,
            ),
            child: Text(
              "11.5 Points",
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowPointsCounterSix(BuildContext context) {
    var theme;
    return Padding(
      padding: EdgeInsets.only(
        left: 5,
        right: 9,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              "10",
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "WEB-43",
              style: theme.textTheme.headlineMedium,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 2,
              bottom: 6,
            ),
            child: Text(
              "11.25 Points",
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowPointsCounterSeven(BuildContext context) {
    var theme;
    return Padding(
      padding: EdgeInsets.only(
        left: 9,
        right: 41,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2,
              bottom: 3,
            ),
            child: Text(
              "11",
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Spacer(
            flex: 21,
          ),
          Text(
            "  APP-42",
            style: theme.textTheme.headlineMedium,
          ),
          Spacer(
            flex: 78,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Text(
              "9 Points",
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowPointsCounterTwo(
    BuildContext context, {
    required String four,
    required String uIUXFortyTwo,
    required String pointsCounter,
  }) {
    var theme;
    var appTheme;
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 2,
            bottom: 3,
          ),
          child: Text(
            four,
            style: theme.textTheme.headlineSmall!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 22),
          child: Text(
            uIUXFortyTwo,
            style: theme.textTheme.headlineMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 7),
          child: Text(
            pointsCounter,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
      ],
    );
  }
}

CustomImageView(
    {required imagePath,
    required height,
    required width,
    required EdgeInsets margin}) {}
