import 'package:personal_website/models/experience_model.dart';
import 'package:personal_website/models/project_model.dart';

const List listTechnologies1 = ['Flutter', 'Git', 'Firebase'];

const List listTechnologies2 = ['Rest-API', 'Figma', 'Postman'];

const List<ExperienceModel> listExperience = [
  ExperienceModel(
    companyLink: 'https://ihsansolusi.co.id/m/#home',
    companyName: 'PT. Ihsan Solusi Informatika',
    duration: 'Mar 2021 - Present',
    experiences: [
      'Work with a team of UI/UX Designer and Back-End Developer to build E-Wallet Apps and Mobile Banking Apps for various clients.',
      'Write, maintain code with implemented clean architecture in every project, and also supervisioned by senior engineer to write good code.',
      'Communicate with multi-disciplinary teams of engineers, designers, project managers, and clients on a daily basis.',
      'Fix bugs and ensuring the application can used properly when released.'
    ],
    position: 'Mobile Application Developer',
  )
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
