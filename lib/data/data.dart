import 'package:personal_website/models/experience_model.dart';
import 'package:personal_website/models/project_model.dart';

const List listTechnologies1 = ['Flutter', 'Git', 'Firebase'];

const List listTechnologies2 = ['Rest-API', 'Figma', 'Postman'];

const List<ExperienceModel> listExperience = [
  ExperienceModel(
    companyLink: 'https://ihsansolusi.co.id/m/#home',
    companyName: 'PT. Ihsan Solusi Informatika',
    duration: 'March 2021 - May 2023',
    experiences: [
      'Work with a team of UI/UX designers and back-end developers to create E-Wallet and Mobile Banking applications for a variety of clients.',
      'Write and maintain code with a clean architecture in every project, while also being supervised by a senior engineer to write quality code.',
      'Communicate with multi-disciplinary teams of engineers, designers, project managers, and clients on a daily basis.',
      'Fix issues and ensure the application can be used correctly when released.',
    ],
    position: 'Mobile Application Developer',
  ),
  ExperienceModel(
    companyLink: 'https://www.anj-group.com/en/home',
    companyName: 'PT. Austindo Nusantara Jaya Tbk',
    duration: 'May 2023 - Present',
    experiences: [
      'Work with the IT Application Department team to digitize existing business process and develop applications to assist the administrative organization.',
      'Refactoring existing project mobile apps with clean architecture makes them more understandable, manageable, and scalable.',
      'Support users at multiple subsidiaries by bug fixing in mobile applications.',
    ],
    position: 'Mobile Application Developer',
  ),
];

const List<ProjectModel> listProject = [
  ProjectModel(
    companyLink: 'https://ihsansolusi.co.id/m/#home',
    companyName: 'PT. Ihsan Solusi Informatika',
    projectDesc:
        'Build a E-Wallet Application to provide financial services with Flutter for Android and iOS.',
    projectLink: {
      'playstore':
          'https://play.google.com/store/apps/details?id=com.posindonesia.giropos',
      'appstore': 'https://apps.apple.com/id/app/pospay/id1542001621',
      'github': '',
    },
    projectTitle: 'Pospay     ',
  ),
  ProjectModel(
    companyLink: 'https://ihsansolusi.co.id/m/#home',
    companyName: 'PT. Ihsan Solusi Informatika',
    projectDesc:
        'Build a Mobile Banking Application to provide financial services with Flutter for Android and iOS.',
    projectLink: {
      'playstore':
          'https://play.google.com/store/apps/details?id=com.megasyariah',
      'appstore': 'https://apps.apple.com/id/app/m-syariah/id1530760308',
      'github': '',
    },
    projectTitle: 'M-Syariah',
  ),
  ProjectModel(
    companyLink: 'https://ihsansolusi.co.id/m/#home',
    companyName: 'PT. Ihsan Solusi Informatika',
    projectDesc:
        'Build a Mobile Banking Application to provide financial services with Flutter for Android and iOS.',
    projectLink: {
      'playstore':
          'https://play.google.com/store/apps/details?id=com.mobilemaslahah',
      'appstore': 'https://apps.apple.com/id/app/mobile-maslahah/id1543627726',
      'github': '',
    },
    projectTitle: 'Mobile Maslahah',
  ),
  ProjectModel(
    companyLink: 'https://ihsansolusi.co.id/m/#home',
    companyName: 'PT. Ihsan Solusi Informatika',
    projectDesc:
        'Build a E-Wallet Application to provide financial services with Flutter for Android and iOS.',
    projectLink: {
      'playstore':
          'https://play.google.com/store/apps/details?id=com.asiapelangi.autopay.wallet',
      'appstore': 'https://apps.apple.com/id/app/actionpay/id1524738360',
      'github': '',
    },
    projectTitle: 'ActionPay',
  ),
];

const List<ProjectModel> listProjectOther = [
  ProjectModel(
    companyName: 'Self Employee',
    projectDesc:
        'Build a Airline Ticket Booking application using Flutter with implement GetX state management. This application using Firebase for user and database authentication, and there are already multilingual features in English and Indonesian.',
    projectLink: {
      'playstore':
          'https://play.google.com/store/apps/details?id=com.fathdotdev.airpedia',
      'appstore': '',
      'github': 'https://github.com/fathulaziss/airpedia',
    },
    projectTitle: 'Airpedia     ',
  ),
  ProjectModel(
    companyName: 'Self Employee',
    projectDesc:
        'Build a Banyuwangi Library Service Information System for mobile application to facilitate librarians such as getting latest news or searching for some books. This application develop using Flutter with implement GetX state management, integration Rest-API, and using Firebase for push notification feature.',
    projectLink: {
      'playstore': 'https://play.google.com/store/apps/details?id=com.dispusip',
      'appstore': '',
      'github': 'https://github.com/fathulaziss/dispusip',
    },
    projectTitle: 'Dispusip Mobile',
  ),
  ProjectModel(
    companyName: 'Self Employee',
    projectDesc:
        'Build a Cinema Ticket Booking application using Flutter with implement GetX state management. This application using Firebase for user and database authentication, integration Rest-API from open API themoviedb to getting movie data, and there are already multilingual features in English and Indonesian.',
    projectLink: {
      'playstore':
          'https://play.google.com/store/apps/details?id=com.fathdotdev.flutix',
      'appstore': '',
      'github': 'https://github.com/fathulaziss/flutix-getx',
    },
    projectTitle: 'Flutix           ',
  ),
];
