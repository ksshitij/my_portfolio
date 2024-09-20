class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

// ###############
// HOBBY PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/pj_1.png',
    title: 'SneakPeek',
    subtitle:
        'A mobile application using Flutter for an intuitive and seamless sneaker shopping experience.',
    androidLink: 'https://github.com/ksshitij/shopping_application',
    iosLink: 'https://github.com/ksshitij/shopping_application',
    webLink: 'https://github.com/ksshitij/shopping_application',
  ),
  ProjectUtils(
    image: 'assets/projects/pj_2.png',
    title: 'ClimateCast',
    subtitle:
        'A mobile application to provide real-time weather information through a simple user interface.',
    androidLink: 'https://github.com/ksshitij/weather_forecast_app',
    iosLink: 'https://github.com/ksshitij/weather_forecast_app',
    webLink: 'https://github.com/ksshitij/weather_forecast_app',
  ),
  ProjectUtils(
    image: 'assets/projects/pj_3.png',
    title: 'Catalogue App',
    subtitle:
        'An intuitive Flutter-based catalogue app for seamless product browsing.',
    androidLink: 'https://github.com/ksshitij/30-days-flutter-project',
    iosLink: 'https://github.com/ksshitij/30-days-flutter-project',
    webLink: 'https://github.com/ksshitij/30-days-flutter-project',
  ),
  ProjectUtils(
    image: 'assets/projects/pj_4.png',
    title: 'Currency Converter',
    subtitle: 'A fast and user-friendly Flutter-based currency converter app.',
    androidLink:
        'https://github.com/ksshitij/currency-calculator-using-Flutter',
    iosLink: 'https://github.com/ksshitij/currency-calculator-using-Flutter',
    webLink: 'https://github.com/ksshitij/currency-calculator-using-Flutter',
  ),
];

// ###############
// WORK PROJECTS
/*List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/w01.png',
    title: 'English Brain Craft',
    subtitle:
        'This is an English learning app for students to learn English through various methods.',
    androidLink:
        'https://play.google.com/store/apps/details?id=kr.co.evolcano.donotstudy',
    iosLink:
        "https://apps.apple.com/kr/app/%EC%98%81%EC%96%B4%EB%A8%B8%EB%A6%AC-%EA%B3%B5%EC%9E%91%EC%86%8C/id1507102714",
  ),
  ProjectUtils(
    image: 'assets/projects/w02.png',
    title: 'Online Shop Web App',
    subtitle:
        'This is a responsive online shop web application for car engine oil.',
    webLink: 'https://www.elo.best',
  ),
  ProjectUtils(
    image: 'assets/projects/w03.jpeg',
    title: 'Advertisement Management System',
    subtitle:
        'This is an Advertisement Management System to buy, sell, and manage advertisement.',
    webLink: 'https://www.externally.unavailable.project',
  ),
];*/