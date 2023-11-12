import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/cubit/bloc_observer.dart';
import 'package:project1/cubit/one/one_cubit.dart';
import 'package:project1/layout/layout_page.dart';
import 'package:project1/shared/local/cach_helper.dart';
import 'package:project1/shared/remote/dio_helper.dart';
import 'package:project1/style/app_themes.dart';

import 'cubit/two/two_cubit.dart';
import 'home/home_page.dart';

Future<void> main() async {
  //bool? onBoardingSkip = CachHelper.getData(key: 'onBoardingSkip');
  //if (onBoardingSkip == null){
  // onBoardingSkip = false ;
  //}
  //if (onBoardingSkip == true){
  //  if (token != null){
  //   widget = home_layout();
  // }else {
  //  widget = login_page();
  // }
  //}else if (onBoardingSkip == false) {
  // widget = onboarding_page();
  //}

//  bool? Darkcheck = CachHelper.getData(key: 'lighti');
  // if (Darkcheck == null){
  //  Darkcheck = true ;
  //}
  WidgetsFlutterBinding.ensureInitialized();
  await CachHelper.init();
  DioHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context){return OneCubit();}),
        BlocProvider(create: (context){return TwoCubit();})
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: lighttheme,
        darkTheme: darktheme,
        themeMode: ThemeMode.light,
        home: home_page(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}