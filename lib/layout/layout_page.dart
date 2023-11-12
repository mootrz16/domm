import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/cubit/one/one_cubit.dart';
import 'package:project1/cubit/one/one_states.dart';
import 'package:project1/shared/constants.dart';

class layout_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OneCubit, OneStates>(
        listener: (context, state) {},
        builder: (context, state) {
          OneCubit cubit = OneCubit.get(context);
          return SafeArea(
            child: Scaffold(
              body: Container(
                color: nbete,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(
                            top: 100
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: abyd
                                ),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: MaterialButton(
                                  padding: EdgeInsets.zero,
                                  disabledColor: rosasy,
                                  onPressed: undo.length !=0 ? (){cubit.undoo();} : null,
                                  child: Icon(
                                    Icons.undo_sharp,
                                    color: eswd,
                                  ),
                                ),
                              ),
                              SizedBox(width: 22,),
                              Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: abyd
                                ),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: MaterialButton(
                                  padding: EdgeInsets.zero,
                                  disabledColor: rosasy,
                                  onPressed: redo.length != 0 ?(){cubit.redoo();}:null,
                                  child: Icon(
                                    Icons.redo_sharp,
                                    color: eswd,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (zhor1 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(1);
                                        },
                                        child: Eldosh()),
                                  ),
                                if (zhor1 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor2 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(2);
                                        },
                                        child: SheshElbesh()),
                                  ),
                                if (zhor2 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor3 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(3);
                                        },
                                        child: GoharElshesh()),
                                  ),
                                if (zhor3 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor4 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(4);
                                        },
                                        child: SehElshesh()),
                                  ),
                                if (zhor4 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor5 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(5);
                                        },
                                        child: DoElshesh()),
                                  ),
                                if (zhor5 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor6 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(6);
                                        },
                                        child: YkElshesh()),
                                  ),
                                if (zhor6 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor7 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(7);
                                        },
                                        child: SheshElfady()),
                                  ),
                                if (zhor7 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (zhor8 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(8);
                                        },
                                        child: Eldabash()),
                                  ),
                                if (zhor8 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor9 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(9);
                                        },
                                        child: GoharElbesh()),
                                  ),
                                if (zhor9 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor10 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(10);
                                        },
                                        child: SehElbesh()),
                                  ),
                                if (zhor10 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor11 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(11);
                                        },
                                        child: DoElbesh()),
                                  ),
                                if (zhor11 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor12 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(12);
                                        },
                                        child: YkElbesh()),
                                  ),
                                if (zhor12 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor13 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(13);
                                        },
                                        child: BeshElfady()),
                                  ),
                                if (zhor13 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor14 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(14);
                                        },
                                        child: Eldorgi()),
                                  ),
                                if (zhor14 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (zhor15 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(15);
                                        },
                                        child: SehElgohar()),
                                  ),
                                if (zhor15 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor16 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(16);
                                        },
                                        child: DoElgohar()),
                                  ),
                                if (zhor16 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor17 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(17);
                                        },
                                        child: YkElgohar()),
                                  ),
                                if (zhor17 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor18 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(18);
                                        },
                                        child: GoharElfady()),
                                  ),
                                if (zhor18 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor19 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(19);
                                        },
                                        child: Eldosa()),
                                  ),
                                if (zhor19 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor20 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(20);
                                        },
                                        child: SehEldo()),
                                  ),
                                if (zhor20 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor21 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(21);
                                        },
                                        child: SehElyk()),
                                  ),
                                if (zhor21 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (zhor22 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(22);
                                        },
                                        child: SehElfady()),
                                  ),
                                if (zhor22 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor23 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(23);
                                        },
                                        child: Eldobara()),
                                  ),
                                if (zhor23 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor24 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(24);
                                        },
                                        child: YkEldo()),
                                  ),
                                if (zhor24 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor25 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(25);
                                        },
                                        child: DoElfady()),
                                  ),
                                if (zhor25 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor26 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(26);
                                        },
                                        child: Elhbyah()),
                                  ),
                                if (zhor26 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor27 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(27);
                                        },
                                        child: YkElfady()),
                                  ),
                                if (zhor27 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                if (zhor28 == true)
                                  Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          cubit.zhor(28);
                                        },
                                        child: Elblata()),
                                  ),
                                if (zhor28 == false)
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          bottom: 70
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90)
                                ),
                                height: 36,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: MaterialButton(
                                    color: abyd,
                                    onPressed: (){
                                      showDialog(
                                          context: context,
                                          builder: (context)=>AlertDialog(
                                            shape: BeveledRectangleBorder(),
                                            backgroundColor: abyd,
                                            title: Text('WARNING',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: eswd) ,),
                                            content: Wrap(
                                              children: [
                                                Text('Are you sure that you want to reset the game?!',maxLines: 2,overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.bodyText1!.copyWith(color: eswd) ,),
                                              ],
                                            ),
                                            contentPadding: EdgeInsetsDirectional.only(
                                              start: 20,
                                              end: 20,
                                              top: 19,
                                              bottom: 11
                                            ),
                                            actions: [
                                              TextButton(

                                                onPressed: () {
                                                  Navigator.pop(context); // Close the dialog
                                                },
                                                child: Text('Cancel'),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional.only(
                                                  end: 10
                                                ),
                                                child: TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    cubit.reset();
                                                  },
                                                  child: Text('Yes'),
                                                ),
                                              ),
                                            ],
                                            actionsPadding: EdgeInsetsDirectional.only(
                                              bottom: 8
                                            ),
                                          )
                                      );
                                    },
                                  child: Text('NEW GAME ?'),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}

Widget ElNos(UpWidget, DownWidget) {
  return Container(
    height: 100,
    width: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: abyd,
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Column(
      children: [
        UpWidget(),
        Separator(),
        DownWidget(),
      ],
    ),
  );
}

Widget Dot() {
  return Container(
    width: 8,
    height: 8,
    decoration: BoxDecoration(shape: BoxShape.circle, color: eswd),
    clipBehavior: Clip.antiAliasWithSaveLayer,
  );
}

Widget Separator() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        height: 4,
        color: eswd,
      ),
      Container(
        width: 6,
        height: 6,
        decoration: BoxDecoration(shape: BoxShape.circle, color: dhby),
      ),
      Container(
        width: 2,
        height: 2,
        decoration: BoxDecoration(shape: BoxShape.circle, color: abyd),
      ),
    ],
  );
}

Widget Shesh() {
  return Expanded(
      child: Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            children: [
              Dot(),
              Spacer(),
              Dot(),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            children: [
              Dot(),
              Spacer(),
              Dot(),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            children: [
              Dot(),
              Spacer(),
              Dot(),
            ],
          ),
        ),
      ],
    ),
  ));
}

Widget Besh() {
  return Expanded(
      child: Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            children: [
              Dot(),
              Spacer(),
              Dot(),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Dot(),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            children: [
              Dot(),
              Spacer(),
              Dot(),
            ],
          ),
        ),
      ],
    ),
  ));
}

Widget Gohar() {
  return Expanded(
      child: Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            children: [
              Dot(),
              Spacer(),
              Dot(),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            children: [
              Dot(),
              Spacer(),
              Dot(),
            ],
          ),
        ),
      ],
    ),
  ));
}

Widget Seh() {
  return Expanded(
      child: Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Dot(),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Dot(),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Dot(),
            ],
          ),
        ),
      ],
    ),
  ));
}

Widget Do() {
  return Expanded(
      child: Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Dot(),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Dot(),
            ],
          ),
        ),
      ],
    ),
  ));
}

Widget Yk() {
  return Expanded(
      child: Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Dot(),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ],
    ),
  ));
}

Widget Fadi() {
  return Expanded(child: Container());
}

Widget SehElfady() {
  return ElNos(Seh, Fadi);
}

Widget DoElfady() {
  return ElNos(Do, Fadi);
}

Widget YkElfady() {
  return ElNos(Yk, Fadi);
}

Widget GoharElfady() {
  return ElNos(Gohar, Fadi);
}

Widget BeshElfady() {
  return ElNos(Besh, Fadi);
}

Widget SheshElfady() {
  return ElNos(Shesh, Fadi);
}

Widget SehElyk() {
  return ElNos(Seh, Yk);
}

Widget SehEldo() {
  return ElNos(Seh, Do);
}

Widget Eldosa() {
  return ElNos(Seh, Seh);
}

Widget SehElgohar() {
  return ElNos(Gohar, Seh);
}

Widget SehElbesh() {
  return ElNos(Besh, Seh);
}

Widget SehElshesh() {
  return ElNos(Shesh, Seh);
}

Widget Elblata() {
  return ElNos(Fadi, Fadi);
}

Widget Elhbyah() {
  return ElNos(Yk, Yk);
}

Widget YkEldo() {
  return ElNos(Do, Yk);
}

Widget YkElgohar() {
  return ElNos(Gohar, Yk);
}

Widget YkElbesh() {
  return ElNos(Besh, Yk);
}

Widget YkElshesh() {
  return ElNos(Shesh, Yk);
}

Widget Eldobara() {
  return ElNos(Do, Do);
}

Widget DoElgohar() {
  return ElNos(Gohar, Do);
}

Widget DoElbesh() {
  return ElNos(Besh, Do);
}

Widget DoElshesh() {
  return ElNos(Shesh, Do);
}

Widget Eldosh() {
  return ElNos(Shesh, Shesh);
}

Widget SheshElbesh() {
  return ElNos(Shesh, Besh);
}

Widget Eldorgi() {
  return ElNos(Gohar, Gohar);
}

Widget GoharElbesh() {
  return ElNos(Besh, Gohar);
}

Widget GoharElshesh() {
  return ElNos(Shesh, Gohar);
}

Widget Eldabash() {
  return ElNos(Besh, Besh);
}
