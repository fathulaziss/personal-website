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
      'Write, maintainable code with implemented clean architecture in every project, and also supervisioned by senior engineer to write good code.',
      'Communicate with multi-disciplinary teams of engineers, designers, project managers, and clients on a daily basis.',
    ],
    position: 'Mobile Application Developer',
  )
];

const List<ProjectModel> listProject = [
  ProjectModel(
    companyLink: 'https://ihsansolusi.co.id/m/#home',
    companyName: 'PT. Ihsan Solusi Informatika',
    projectDesc:
        'Building a E-Wallet Application to provide financial services with Flutter for Android and iOS.',
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
        'Building a Mobile Banking Application to provide financial services with Flutter for Android and iOS.',
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
        'Building a Mobile Banking Application to provide financial services with Flutter for Android and iOS.',
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
        'Building a E-Wallet Application to provide financial services with Flutter for Android and iOS.',
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
    projectDesc: 'Building a Booking Airline Ticket Application using Flutter.',
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
        'Building a Digital Library Application for Dinas Perpustakaan dan Kearsipan Banyuwangi Indonesia using Flutter.',
    projectLink: {
      'playstore': 'https://play.google.com/store/apps/details?id=com.dispusip',
      'appstore': '',
      'github': 'https://github.com/fathulaziss/dispusip',
    },
    projectTitle: 'Dispusip Mobile',
  ),
  ProjectModel(
    companyName: 'Self Employee',
    projectDesc: 'Building a Booking Cinema Ticket Application using Flutter.',
    projectLink: {
      'playstore':
          'https://play.google.com/store/apps/details?id=com.damarion.flutter_movie_tickets',
      'appstore': '',
      'github': 'https://github.com/fathulaziss/flutter-movie-tickets-app',
    },
    projectTitle: 'Flutix           ',
  ),
];
