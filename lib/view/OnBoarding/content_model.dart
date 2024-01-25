// ignore: camel_case_types
class unbordingcontent{
  String? image;
  String? title;
  String? discription;
  unbordingcontent({this.image,this.title,this.discription});
}
List<unbordingcontent> contents=[
  unbordingcontent(
    title: 'Welcome To Diabetes \n        Application',
    image: ('assets/OnBoarding/image 1 (1).png'),
    discription: "This application helps you measure \nblood sugar using infrared",
  )
  ,unbordingcontent(
    title: 'With you in different\n             places',
    image: 'assets/OnBoarding/image 2 (1).png',
    discription: "he application helps you in all places \nwhen you face a crisis",
  ),
  unbordingcontent(
    title: 'Let''s join the application',
    image: 'assets/OnBoarding/image 3 (1).png',
    discription: "Welcome to the application, join us",
  ),
];