import 'package:latlong2/latlong.dart';
import 'package:shahid_neshan/src/view/home/data/shahid_kashan_model.dart';
import 'package:shahid_neshan/src/view/home/data/story_model.dart';
import 'package:shahid_neshan/src/view/location/data/model/location_model.dart';

class FakeData {
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

  static List<String> postsImages = [postImage1, postImage2, postImage3, postImage1, postImage2, postImage3];

  static List<ShahidKashanModel> shahidKashan = [
    ShahidKashanModel(
      id: 1,
      title: 'شهید عباس کریمی',
      description:
      "فرمانده لشکر ۲۷ محمد رسول‌الله که در عملیات خیبر در شلمچه به شهادت رسید.",
      image: karimiImage,
      age: '30 سال',
      mahalTavalod: 'قهرود',
      mahalShahadat: 'شلمچه',
      vasiatNameh: 'ای مردم! راه شهدا را ادامه دهید و از انقلاب اسلامی پاسداری کنید.',
      latLng: const LatLng(33.966498, 51.435468)
    ),
    ShahidKashanModel(
      id: 2,
      title: 'شهید حسین معمار',
      description:
      "یکی از شهدای کربلای ۵ که در حین هدایت نیروها به شهادت رسید.",
      image: memarImage,
      age: '21 سال',
      mahalTavalod: 'کاشان',
      mahalShahadat: 'منطقه کربلای ۵',
      vasiatNameh: 'در برابر دشمنان ایستادگی کنید و نگذارید خون شهدا پایمال شود.',
      latLng: const LatLng(34.010621, 51.373630)
    ),
    ShahidKashanModel(
      id: 3,
      title: 'شهید محمدجواد باهنر',
      description:
      "یکی از شهدای دفاع مقدس که در عملیات بدر به شهادت رسید.",
      image: bahonarImage,
      age: '22 سال',
      mahalTavalod: 'کاشان',
      mahalShahadat: 'منطقه عملیاتی بدر',
      vasiatNameh: 'برای حفظ ارزش‌های اسلام تلاش کنید.',
      latLng: const LatLng(33.99083994801115, 51.40648841857911)
    ),
    ShahidKashanModel(
      id: 4,
      title: 'شهید مهدی فارسی',
      description:
      "از فرماندهان جنگ که در عملیات والفجر ۸ در فاو به شهادت رسید.",
      image: farsiImage,
      age: '32 سال',
      mahalTavalod: 'کاشان',
      mahalShahadat: 'فاو',
      vasiatNameh: 'به ولایت فقیه پایبند باشید و ارزش‌های دینی را پاس بدارید.',
      latLng: const LatLng(33.96386430820156, 51.40125274658204)
    ),
    ShahidKashanModel(
      id: 5,
      title: 'شهید محمدرضا رجایی',
      description:
      "شهیدی که در عملیات خیبر و در شلمچه به شهادت رسید.",
      image: rejaeeImage,
      age: '23 سال',
      mahalTavalod: 'قمصر',
      mahalShahadat: 'شلمچه',
      vasiatNameh: 'نماز را اول وقت بخوانید و در مسیر خداوند حرکت کنید.',
      latLng: const LatLng(33.98038730820156, 51.451107274658204)
    ),
    ShahidKashanModel(
      id: 6,
      title: 'شهید احمد زجاجی',
      description:
      "یکی از شهدای عملیات فتح‌المبین که نقش مهمی در پیروزی عملیات داشت.",
      image: zojajiImage,
      age: '25 سال',
      mahalTavalod: 'کاشان',
      mahalShahadat: 'فتح‌المبین',
      vasiatNameh: 'با حفظ وحدت، از دشمنان اسلام فاصله بگیرید.',
      latLng: const LatLng(33.98283430820156, 51.422812274658204)
    ),
  ];

  static List<LocationModel> locationData = [
    LocationModel(1, 'شهید باهنر', bahonarImage, const LatLng(33.966498, 51.435468)),
    LocationModel(2, 'شهید فارسی', farsiImage,   const LatLng(34.010621, 51.373630)),
    LocationModel(3, 'شهید کریمی', karimiImage,  const LatLng(33.99083994801115, 51.40648841857911)),
    LocationModel(4, 'شهید معمار', memarImage,   const LatLng(33.96386430820156, 51.40125274658204)),
    LocationModel(5, 'شهید رجایی', rejaeeImage,  const LatLng(33.98038730820156, 51.451107274658204)),
    LocationModel(6, 'شهید زجاجی', zojajiImage,  const LatLng(33.98283430820156, 51.422812274658204)),
  ];

}
