import 'package:latlong2/latlong.dart';
import 'package:shahid_neshan/src/view/home/data/shahid_kashan_model.dart';
import 'package:shahid_neshan/src/view/home/data/story_model.dart';
import 'package:shahid_neshan/src/view/location/data/model/location_model.dart';

class FakeData{

  //! shahid Image
  static const String bahonarImage = 'assets/images/shahid_images/bahonar.png';
  static const String farsiImage = 'assets/images/shahid_images/farsi.png';
  static const String karimiImage = 'assets/images/shahid_images/karimi.png';
  static const String memarImage = 'assets/images/shahid_images/memar.png';
  static const String rejaeeImage = 'assets/images/shahid_images/rejaee.png';
  static const String zojajiImage = 'assets/images/shahid_images/zojaji.png';

  //! posts Image
  static const String postImage1 = 'assets/images/posts/post_image1.png';
  static const String postImage2 = 'assets/images/posts/post_image2.png';
  static const String postImage3 = 'assets/images/posts/post_image3.png';

  static List<StoryModel> fakeStoryModelData = [
    StoryModel('شهید باهنر', bahonarImage),
    StoryModel('شهید فارسی', farsiImage),
    StoryModel('شهید کریمی', karimiImage),
    StoryModel('شهید معمار', memarImage),
    StoryModel('شهید رجایی', rejaeeImage),
    StoryModel('شهید زجاجی', zojajiImage),
  ];

  static List<String> postsImages = [ postImage1, postImage2, postImage3,postImage1, postImage2, postImage3 ];

  static List<ShahidKashanModel> shahidKashan = [
    ShahidKashanModel('شهید باهنر', "عباس کریمی قهرودی سال ۱۳۳۶ هجری شمسی در «قهرود» کاشان چشم به جهان گشود. دوران ابتدایی را در این روستا به پایان رسانید و وارد هنرستان شد. بعد از اخذ دیپلم در رشته نساجی، به سربازی رفت", bahonarImage),
    ShahidKashanModel('شهید فارسی', "عباس کریمی قهرودی سال ۱۳۳۶ هجری شمسی در «قهرود» کاشان چشم به جهان گشود. دوران ابتدایی را در این روستا به پایان رسانید و وارد هنرستان شد. بعد از اخذ دیپلم در رشته نساجی، به سربازی رفت", farsiImage),
    ShahidKashanModel('شهید کریمی', "عباس کریمی قهرودی سال ۱۳۳۶ هجری شمسی در «قهرود» کاشان چشم به جهان گشود. دوران ابتدایی را در این روستا به پایان رسانید و وارد هنرستان شد. بعد از اخذ دیپلم در رشته نساجی، به سربازی رفت", karimiImage),
    ShahidKashanModel('شهید معمار', "عباس کریمی قهرودی سال ۱۳۳۶ هجری شمسی در «قهرود» کاشان چشم به جهان گشود. دوران ابتدایی را در این روستا به پایان رسانید و وارد هنرستان شد. بعد از اخذ دیپلم در رشته نساجی، به سربازی رفت", memarImage),
    ShahidKashanModel('شهید رجایی', "عباس کریمی قهرودی سال ۱۳۳۶ هجری شمسی در «قهرود» کاشان چشم به جهان گشود. دوران ابتدایی را در این روستا به پایان رسانید و وارد هنرستان شد. بعد از اخذ دیپلم در رشته نساجی، به سربازی رفت", rejaeeImage),
    ShahidKashanModel('شهید زجاجی', "عباس کریمی قهرودی سال ۱۳۳۶ هجری شمسی در «قهرود» کاشان چشم به جهان گشود. دوران ابتدایی را در این روستا به پایان رسانید و وارد هنرستان شد. بعد از اخذ دیپلم در رشته نساجی، به سربازی رفت", zojajiImage),
  ];
  
  static List<LocationModel> locationData = [
    LocationModel(1, 'شهید باهنر', bahonarImage, const LatLng(33.966498,51.435468)),
    LocationModel(2, 'شهید فارسی', farsiImage, const LatLng(34.010621,51.373630)),
    LocationModel(3, 'شهید کریمی', karimiImage, const LatLng(33.99083994801115, 51.40648841857911)),
    LocationModel(4, 'شهید معمار', memarImage, const LatLng(33.96386430820156, 51.40125274658204)),
    LocationModel(5, 'شهید رجایی', rejaeeImage, const LatLng(33.98038730820156, 51.451107274658204)),
    LocationModel(6, 'شهید زجاجی', zojajiImage, const LatLng(33.98283430820156, 51.422812274658204)),
  ];
  
}