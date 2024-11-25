class OnboardingScreenHandler {
  static List<OnboardingItem> get getOnboardingItem => [
        OnboardingItem(
          title: "چالش های هفتگی جذاب با انجام چالش های جذاب هفتگی میتونید به شهدا نزدیک بشید و سبک زندگی اون ها رو دنبال کنید",
          subTitle: "چالش های هفتگی جذاب",
          image: "onboarding-banner1",
        ),
        OnboardingItem(
          title: "شهدا روی نقشه میتونی وارد خیابون هایی بشی که با اسم شهدا نام گذاری شدن و درمورد اونها بخونی و به زندگیشون نزدیک تر بشی",
          subTitle: "شهدا روی نقشه",
          image: "onboarding-banner2",
        ),
        OnboardingItem(
          title: "شما میتونید هرجا که نام یک شهید رو دیدید اون رو اسکن کنید و کلی اطلاعات درمورد سبک زندگی و خاطرات و وصیت‌نامه و... اون شهید رو ببینید",
          subTitle: "اسکن نام شهدا",
          image: "onboarding-banner3",
        ),
      ];
}

class OnboardingItem {
  final String title;
  final String subTitle;
  final String image;

  OnboardingItem({required this.title, required this.subTitle, required this.image});
}
