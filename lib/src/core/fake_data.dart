import 'package:shahid_neshan/src/view/home/data/story_model.dart';

class FakeData{

  static const String bahonarImage = 'assets/images/shahid_images/bahonar.png';
  static const String farsiImage = 'assets/images/shahid_images/farsi.png';
  static const String karimiImage = 'assets/images/shahid_images/karimi.png';
  static const String memarImage = 'assets/images/shahid_images/memar.png';
  static const String rejaeeImage = 'assets/images/shahid_images/rejaee.png';
  static const String zojajiImage = 'assets/images/shahid_images/zojaji.png';

  static List<StoryModel> fakeStoryModelData = [
    StoryModel('شهید باهنر', bahonarImage),
    StoryModel('شهید فارسی', farsiImage),
    StoryModel('شهید کریمی', karimiImage),
    StoryModel('شهید معمار', memarImage),
    StoryModel('شهید رجایی', rejaeeImage),
    StoryModel('شهید زجاجی', zojajiImage),
  ];
  
}