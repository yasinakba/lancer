import 'package:flutter/material.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/home_screen_mobile.dart';
import 'package:lancer_resume/feature/feature_library_screen_mobile/view/library_screen_mobile.dart';
import 'package:lancer_resume/feature/feature_profile_screen_mobile/view/profile_screen_mobile.dart';
import 'package:lancer_resume/feature/feature_watch_screen_mobile/view/watch_screen_mobile.dart';
import 'package:lancer_resume/feature/trailer_feature/view/trailer_screen.dart';
import 'package:lancer_resume/global_entity/series.dart';


final List<SeriesEntity> featuredSeries = [

  SeriesEntity(
      remainTime: '11',
      name: 'Money Heist',
      imageUrl1: "https://i.postimg.cc/QCGtK6Qn/money-heist1.jpg",
      imageUrl2: "https://i.postimg.cc/5NWFc4Rv/money-heist2.jpg",
      year: "2018",
      genre: "Secret,Crime",
      seasons: 5,
      description:
          'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity( remainTime: '5',
      name: 'Breaking Bad',
      imageUrl1: "https://i.postimg.cc/CMJk8BMN/breaking-bad1.jpg",
      imageUrl2: "https://i.postimg.cc/FHx7Mwfx/breaking-bad2.jpg",
      year: "2020",
      genre: "Anime",
      seasons: 4,
      description:
          'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity( remainTime: '10',
      name: '13 Reason Why',
      imageUrl1: "https://i.postimg.cc/Gpx38DPJ/13-reasons-why1.jpg",
      imageUrl2: "https://i.postimg.cc/prng8bbb/13-reasons-why2.jpg",
      year: "2018",
      genre: "Comdey",
      seasons: 4,
      description:
          'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity( remainTime: '14',
      name: 'The Witcher',
      imageUrl1: "https://i.postimg.cc/RCLPsL4x/witcher1.jpg",
      imageUrl2: "https://i.postimg.cc/vHStkPKk/witcher2.jpg",
      year: "2016",
      genre: "Deram",
      seasons: 3,
      description:
          'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity( remainTime: "7",
      name: 'Dark',
      imageUrl1: "https://i.postimg.cc/rmmpB93Z/dark2.jpg",
      imageUrl2: "https://i.postimg.cc/rmmpB93Z/dark2.jpg",
      year: "2017",
      genre: "Teenage",
      seasons: 1,
      description:
          'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity( remainTime: '27',
      name: 'Lucifer',
      imageUrl1: "https://i.postimg.cc/fyjsrt5T/lucifer2.jpg",
      imageUrl2: "https://i.postimg.cc/fyjsrt5T/lucifer2.jpg",
      year: "2018",
      genre: "Action",
      seasons: 2,
      description:
          'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
];

final List<SeriesEntity> myListFilm = [
  SeriesEntity(
      name: 'Vis a Vis',
      imageUrl1: "https://i.postimg.cc/SxJSyGGw/visavis1.jpg",
      imageUrl2: "https://i.postimg.cc/zDRPV7Tm/wp4651659.jpg",
      year: "2018",
      genre: "Action",
      seasons: 2,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity(
      name: 'Squid Game',
      imageUrl1: "https://i.postimg.cc/XJFXngnV/squid-game2.png",
      imageUrl2: "https://i.postimg.cc/XJFXngnV/squid-game2.png",
      year: "2018",
      genre: "Comdey",
      seasons: 7,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity(
      name: 'Barbarians',
      imageUrl1: "https://i.postimg.cc/HxQWqstn/barbarians2.jpg",
      imageUrl2: "https://i.postimg.cc/HxQWqstn/barbarians2.jpg",
      year: "2016",
      genre: "Deram",
      seasons: 3,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity(
      name: 'The Witcher',
      imageUrl1: "https://i.postimg.cc/RCLPsL4x/witcher1.jpg",
      imageUrl2: "https://i.postimg.cc/vHStkPKk/witcher2.jpg",
      year: "2016",
      genre: "Deram",
      seasons: 3,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity(
      name: 'Vis a Vis',
      imageUrl1: "https://i.postimg.cc/SxJSyGGw/visavis1.jpg",
      imageUrl2: "https://i.postimg.cc/zDRPV7Tm/wp4651659.jpg",
      year: "2018",
      genre: "Action",
      seasons: 2,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity(
      name: 'Elite',
      imageUrl1: "https://i.postimg.cc/0yxYFbdM/elite2.jpg",
      imageUrl2: "https://i.postimg.cc/0yxYFbdM/elite2.jpg",
      year: "2017",
      genre: "Teenage",
      seasons: 1,
      description:
          'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),

  SeriesEntity(
      name: 'Sense 8',
      imageUrl1: "https://i.postimg.cc/fRB9P5Rp/sense82.jpg",
      imageUrl2: "https://i.postimg.cc/fRB9P5Rp/sense82.jpg",
      year: "2020",
      genre: "Action",
      seasons: 4,
      description:
          'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity(
      name: 'Squid Game',
      imageUrl1: "https://i.postimg.cc/XJFXngnV/squid-game2.png",
      imageUrl2: "https://i.postimg.cc/XJFXngnV/squid-game2.png",
      year: "2018",
      genre: "Comdey",
      seasons: 7,
      description:
          'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity(
      name: 'Barbarians',
      imageUrl1: "https://i.postimg.cc/HxQWqstn/barbarians2.jpg",
      imageUrl2: "https://i.postimg.cc/HxQWqstn/barbarians2.jpg",
      year: "2016",
      genre: "Deram",
      seasons: 3,
      description:
          'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity(
      name: 'The Witcher',
      imageUrl1: "https://i.postimg.cc/RCLPsL4x/witcher1.jpg",
      imageUrl2: "https://i.postimg.cc/vHStkPKk/witcher2.jpg",
      year: "2016",
      genre: "Deram",
      seasons: 3,
      description:
          'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
];

final List<SeriesEntity> newestList = [
  SeriesEntity(
      name: 'Elite',
      imageUrl1: "https://i.postimg.cc/0yxYFbdM/elite2.jpg",
      imageUrl2: "https://i.postimg.cc/0yxYFbdM/elite2.jpg",
      year: "2017",
      genre: "Teenage",
      seasons: 1,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity(
      name: 'Sense 8',
      imageUrl1: "https://i.postimg.cc/fRB9P5Rp/sense82.jpg",
      imageUrl2: "https://i.postimg.cc/fRB9P5Rp/sense82.jpg",
      year: "2020",
      genre: "Action",
      seasons: 4,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity(
      name: 'Squid Game',
      imageUrl1: "https://i.postimg.cc/XJFXngnV/squid-game2.png",
      imageUrl2: "https://i.postimg.cc/XJFXngnV/squid-game2.png",
      year: "2018",
      genre: "Comdey",
      seasons: 7,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity(
      name: 'Barbarians',
      imageUrl1: "https://i.postimg.cc/HxQWqstn/barbarians2.jpg",
      imageUrl2: "https://i.postimg.cc/HxQWqstn/barbarians2.jpg",
      year: "2016",
      genre: "Deram",
      seasons: 3,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity(
      name: 'The Witcher',
      imageUrl1: "https://i.postimg.cc/RCLPsL4x/witcher1.jpg",
      imageUrl2: "https://i.postimg.cc/vHStkPKk/witcher2.jpg",
      year: "2016",
      genre: "Deram",
      seasons: 3,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity(
      name: 'Vis a Vis',
      imageUrl1: "https://i.postimg.cc/SxJSyGGw/visavis1.jpg",
      imageUrl2: "https://i.postimg.cc/zDRPV7Tm/wp4651659.jpg",
      year: "2018",
      genre: "Action",
      seasons: 2,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity(
      remainTime: '11',
      name: 'Money Heist',
      imageUrl1: "https://i.postimg.cc/QCGtK6Qn/money-heist1.jpg",
      imageUrl2: "https://i.postimg.cc/5NWFc4Rv/money-heist2.jpg",
      year: "2018",
      genre: "Secret,Crime",
      seasons: 5,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),

  SeriesEntity( remainTime: '5',
      name: 'Breaking Bad',
      imageUrl1: "https://i.postimg.cc/CMJk8BMN/breaking-bad1.jpg",
      imageUrl2: "https://i.postimg.cc/FHx7Mwfx/breaking-bad2.jpg",
      year: "2020",
      genre: "Anime",
      seasons: 4,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity( remainTime: '10',
      name: '13 Reason Why',
      imageUrl1: "https://i.postimg.cc/Gpx38DPJ/13-reasons-why1.jpg",
      imageUrl2: "https://i.postimg.cc/prng8bbb/13-reasons-why2.jpg",
      year: "2018",
      genre: "Comdey",
      seasons: 4,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity( remainTime: "7",
      name: 'Dark',
      imageUrl1: "https://i.postimg.cc/rmmpB93Z/dark2.jpg",
      imageUrl2: "https://i.postimg.cc/rmmpB93Z/dark2.jpg",
      year: "2017",
      genre: "Teenage",
      seasons: 1,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity( remainTime: '27',
      name: 'Lucifer',
      imageUrl1: "https://i.postimg.cc/fyjsrt5T/lucifer2.jpg",
      imageUrl2: "https://i.postimg.cc/fyjsrt5T/lucifer2.jpg",
      year: "2018",
      genre: "Action",
      seasons: 2,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),

  SeriesEntity(
      name: 'Vis a Vis',
      imageUrl1: "https://i.postimg.cc/SxJSyGGw/visavis1.jpg",
      imageUrl2: "https://i.postimg.cc/zDRPV7Tm/wp4651659.jpg",
      year: "2018",
      genre: "Action",
      seasons: 2,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity( remainTime: '14',
      name: 'The Witcher',
      imageUrl1: "https://i.postimg.cc/RCLPsL4x/witcher1.jpg",
      imageUrl2: "https://i.postimg.cc/vHStkPKk/witcher2.jpg",
      year: "2016",
      genre: "Deram",
      seasons: 3,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),
  SeriesEntity(
      name: 'Squid Game',
      imageUrl1: "https://i.postimg.cc/XJFXngnV/squid-game2.png",
      imageUrl2: "https://i.postimg.cc/XJFXngnV/squid-game2.png",
      year: "2018",
      genre: "Comdey",
      seasons: 7,
      description:
      'A lonely young woman, Sintel, helps and befriends a dragon,whom she calls Scales. But when he is kidnapped by an adult'
          'dragon, Sintel decides to embark on a dangerous quest to find'
          'her lost friend Scales.'),

];


final List<Widget> screens = [
  HomeScreenMobile(),WatchScreenMobile(),LibraryScreenMobile(),TrailerScreenMobile(),ProfileScreenMobile(),
];


