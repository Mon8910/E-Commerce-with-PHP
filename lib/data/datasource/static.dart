import 'package:ecommerce_app/core/constant/app_assets.dart';
import 'package:ecommerce_app/data/model/onbarding_model.dart';

List<OnboardingModel> onboardingList = [
  OnboardingModel(
    title: 'Choose Product',
    body:
        'We Have a 100k+ Products choose \n YourProductfrom our \n E-commerce shop',
    image: AppAssets.onBoardingone,
  ),
  OnboardingModel(
    title: 'Easy & safe payment',
    body:
        'Easy Checkout & safe payment \n method.trusted by our customers \n from all over the world',
    image: AppAssets.onBoardingtwo,
  ),
  OnboardingModel(
    title: 'Track Your Order',
    body:
        'Best Tracker has been userd for \n track your order.you`ll know where \n your product is at the moment',
    image: AppAssets.onBoardingthree,
  ),
  OnboardingModel(
    title: 'Fast Delivery',
    body:
        'Reliable And Fast Delivery.we \n Deliver youe product to the fastest \nway possible',
    image: AppAssets.onBoardingfour,
  )
];
