import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:project1/cubit/two/two_cubit.dart';
import 'package:project1/cubit/two/two_states.dart';
import 'package:project1/home/home_page.dart';
import 'package:project1/layout/layout_page.dart';
import 'package:pip_view/pip_view.dart';

import '../shared/constants.dart';

class elsbora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      TwoCubit.get(context).addRound();
      return BlocConsumer<TwoCubit, TwoStates>(
          listener: (context, state) {},
          builder: (context, state) {
            TwoCubit cubit = TwoCubit.get(context);
            return PIPView(
              builder: (context, isFloating) {
                return WillPopScope(
                  onWillPop: () async {
                    PIPView.of(context)!.presentBelow(layout_page());
                    return false; // Prevent default back button behavior
                  },
                  child: Scaffold(
                    appBar: AppBar(
                      leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: MaterialButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>home_page()), (route) => false);
                                cubit.remove();
                              },
                              child: Icon(Icons.arrow_back_ios))),
                    ),
                    floatingActionButton: FloatingActionButton(
                      backgroundColor: nbete,
                      child: Icon(CupertinoIcons.add,color: abyd,),
                      onPressed: () {
                        cubit.addRound();
                      },
                    ),
                    body: Column(
                      children: [
                        Container(
                          height: 52,
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 2,
                                      color: eswd,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          start: 0
                                      ),
                                      child: Container(
                                        child: Form(
                                            key: playerOneKey,
                                            onChanged: (){},
                                            child: TextFormField(
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(color: eswd),
                                              cursorColor: rosasy,
                                              onChanged: (value) {
                                                //cubit.postCommentTextUpdateEnable();
                                              },
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return;
                                                }
                                              },
                                              controller: playerOneController,
                                              decoration: InputDecoration(
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none),
                                                hintText: 'Player 1',
                                                hintStyle: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(color: rosasy),
                                              ),
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    color: eswd,
                                    width: 2,
                                    height: double.infinity,
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 2,
                                      color: eswd,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          start: 0),
                                      child: Container(
                                        child: Form(
                                            key: playerTwoKey,
                                            child: TextFormField(
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(color: eswd),
                                              cursorColor: rosasy,
                                              onChanged: (value) {
                                                //cubit.postCommentTextUpdateEnable();
                                              },
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return;
                                                }
                                              },
                                              controller: playerTwoController,
                                              decoration: InputDecoration(
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none),
                                                hintText: 'Player 2',
                                                hintStyle: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(color: rosasy),
                                              ),
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 2,
                          color: eswd,
                        ),
                        SizedBox(height: 9,),
                        Container(
                          height: 52,
                          child: Column(
                            children: [
                              Container(
                                height: 52,
                                child: Row(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 2,
                                            color: eswd,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text('${x1}',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                color: eswd
                                            ),
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            width: double.infinity,
                                            height: 2,
                                            color: eswd,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      color: eswd,
                                      width: 2,
                                      height: 52,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 2,
                                            color: eswd,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text('${x2}',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                color: eswd
                                            ),
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            width: double.infinity,
                                            height: 2,
                                            color: eswd,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "ROUNDS",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: eswd),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Expanded(
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) => index == 0
                                  ? Column(
                                    children: [
                                      Container(
                                          height: 52,
                                          child: Row(
                                            // crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 2,
                                                      color: eswd,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .only(start: 0),
                                                      child: Container(
                                                        child: Form(
                                                            key: keys1[index],
                                                            onChanged: (){
                                                              cubit.FScore1();
                                                            },
                                                            child: TextFormField(
                                                              keyboardType: TextInputType.number,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  Theme.of(context)
                                                                      .textTheme
                                                                      .bodyText1!
                                                                      .copyWith(
                                                                          color:
                                                                              eswd),
                                                              cursorColor: rosasy,
                                                              onChanged: (value) {
                                                                //cubit.postCommentTextUpdateEnable();
                                                              },
                                                              validator: (value) {
                                                                if (value!
                                                                    .isEmpty) {
                                                                  return;
                                                                }
                                                              },
                                                              controller:
                                                                  player1[index],
                                                              decoration:
                                                                  InputDecoration(
                                                                focusedBorder:
                                                                    UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide
                                                                                .none),
                                                                enabledBorder:
                                                                    UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide
                                                                                .none),
                                                                hintText: 'Score',
                                                                hintStyle: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyText1!
                                                                    .copyWith(
                                                                        color:
                                                                            rosasy),
                                                              ),
                                                            )),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    color: nbete,
                                                    width: 50,
                                                    height: double.infinity,
                                                    child: Center(
                                                      child: Text(
                                                        "${index+1}",
                                                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                          color: abyd
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Expanded(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 2,
                                                      color: eswd,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .only(start: 0),
                                                      child: Container(
                                                        child: Form(
                                                          onChanged: (){
                                                            cubit.FScore2();
                                                          },
                                                            key: keys2[index],
                                                            child: TextFormField(
                                                              keyboardType: TextInputType.number,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  Theme.of(context)
                                                                      .textTheme
                                                                      .bodyText1!
                                                                      .copyWith(
                                                                          color:
                                                                              eswd),
                                                              cursorColor: rosasy,
                                                              onChanged: (value) {
                                                                //cubit.postCommentTextUpdateEnable();
                                                              },
                                                              validator: (value) {
                                                                if (value!
                                                                    .isEmpty) {
                                                                  return;
                                                                }
                                                              },
                                                              controller:
                                                                  player2[index],
                                                              decoration:
                                                                  InputDecoration(
                                                                focusedBorder:
                                                                    UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide
                                                                                .none),
                                                                enabledBorder:
                                                                    UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide
                                                                                .none),
                                                                hintText: 'Score',
                                                                hintStyle: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyText1!
                                                                    .copyWith(
                                                                        color:
                                                                            rosasy),
                                                              ),
                                                            )),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      Container(
                                        width: double.infinity,
                                        height: 2,
                                        color: eswd,
                                      )
                                    ],
                                  )
                                  : Column(
                                    children: [
                                      Slidable(
                                          endActionPane: ActionPane(
                                            motion: const StretchMotion(),
                                            children: [
                                              SlidableAction(
                                                  backgroundColor: a7mr,
                                                  icon: Icons.delete,
                                                  label: "Delete",
                                                  onPressed: (context) {
                                                    cubit.delete(index, context);
                                                  }),
                                            ],
                                          ),
                                          key: ValueKey(keys1[index].toString()),
                                          child: Container(
                                            height: 52,
                                            child: Row(
                                              // crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        height: 2,
                                                        color: eswd,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .only(start: 0),
                                                        child: Container(
                                                          child: Form(

                                                            onChanged: (){
                                                              cubit.FScore1();
                                                            },
                                                              key: keys1[index],
                                                              child: TextFormField(
                                                                keyboardType: TextInputType.number,
                                                                textAlign: TextAlign.center,
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyText1!
                                                                    .copyWith(
                                                                        color:
                                                                            eswd),
                                                                cursorColor: rosasy,
                                                                onChanged: (value) {
                                                                  //cubit.postCommentTextUpdateEnable();
                                                                },
                                                                validator: (value) {
                                                                  if (value!
                                                                      .isEmpty) {
                                                                    return;
                                                                  }
                                                                },
                                                                controller:
                                                                    player1[index],
                                                                decoration:
                                                                    InputDecoration(
                                                                  focusedBorder:
                                                                      UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide
                                                                                  .none),
                                                                  enabledBorder:
                                                                      UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide
                                                                                  .none),
                                                                  hintText: 'Score',
                                                                  hintStyle: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText1!
                                                                      .copyWith(
                                                                          color:
                                                                              rosasy),
                                                                ),
                                                              )),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      color: nbete,
                                                      width: 50,
                                                      height: double.infinity,
                                                      child: Center(
                                                        child: Text(
                                                          "${index+1}",
                                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                              color: abyd
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        height: 2,
                                                        color: eswd,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .only(start: 0),
                                                        child: Container(
                                                          child: Form(
                                                              key: keys2[index],
                                                              onChanged: (){
                                                                cubit.FScore2();
                                                              },
                                                              child: TextFormField(
                                                                keyboardType: TextInputType.number,
                                                                textAlign: TextAlign.center,
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyText1!
                                                                    .copyWith(
                                                                        color:
                                                                            eswd),
                                                                cursorColor: rosasy,
                                                                onChanged: (value) {
                                                                  //cubit.postCommentTextUpdateEnable();
                                                                },
                                                                validator: (value) {
                                                                  if (value!
                                                                      .isEmpty) {
                                                                    return;
                                                                  }
                                                                },
                                                                controller:
                                                                    player2[index],
                                                                decoration:
                                                                    InputDecoration(
                                                                  focusedBorder:
                                                                      UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide
                                                                                  .none),
                                                                  enabledBorder:
                                                                      UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide
                                                                                  .none),
                                                                  hintText: 'Score',
                                                                  hintStyle: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText1!
                                                                      .copyWith(
                                                                          color:
                                                                              rosasy),
                                                                ),
                                                              )),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      Container(
                                        width: double.infinity,
                                        height: 2,
                                        color: eswd,
                                      )
                                    ],
                                  ),
                              separatorBuilder: (context, index) => SizedBox(
                                    height: 4,
                                  ),
                              itemCount: i),
                        ),
                        Container(
                          color: abyd,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(90)
                                      ),
                                      height: 36,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: MaterialButton(
                                        color: nbete,
                                        onPressed: (){
                                          PIPView.of(context)!.presentBelow(layout_page());
                                        },
                                        child: Text('TO THE GAME',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: abyd),),
                                      ),
                                    ),
                              ),
                            ],
                          ),
                        )
                        // Container(
                    //       decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(90)
                    //       ),
                    //       height: 36,
                    //       clipBehavior: Clip.antiAliasWithSaveLayer,
                    //       child: MaterialButton(
                    //         color: eswd,
                    //         onPressed: (){},
                    //         child: Text('calculate',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: abyd),),
                    //       ),
                    //     ),
                      ],
                    ),
                  ),
                );
              },
              floatingHeight: 76,
              floatingWidth: 200,
            );
          });
    });
  }
}
//Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(90)
//                         ),
//                         height: 36,
//                         clipBehavior: Clip.antiAliasWithSaveLayer,
//                         child: MaterialButton(
//                           color: eswd,
//                           onPressed: (){},
//                           child: Text('NEW GAME ?',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: abyd),),
//                         ),
//                       ),

// Dismissible(
//                                     background: Container(
//                                       color: Colors.redAccent,
//                                       height: 52,
//                                       child: Center(
//                                         child: Column(
//                                           children: [
//                                             Icon(Icons.delete),
//                                             Text('delete',
//                                                 style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                                                   color: abyd
//                                                 ),),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                     key: ValueKey(keys1[index].toString()),
//                                     onDismissed: (direction) {},
//                                     direction: DismissDirection.endToStart,
//                                     confirmDismiss: (direction) {
//                                       return showDialog(
//                                           context: context,
//                                           builder: (ctx) => AlertDialog(
//                                                 title: Text(
//                                                   'ok bro',
//                                                   style: Theme.of(context)
//                                                       .textTheme
//                                                       .bodyText1!
//                                                       .copyWith(),
//                                                 ),
//                                                 content: Text(
//                                                   'zrbo zrbo zrbo',
//                                                   style: Theme.of(context)
//                                                       .textTheme
//                                                       .bodyText1!
//                                                       .copyWith(),
//                                                 ),
//                                                 actions: [
//                                                   Container(
//                                                     decoration: BoxDecoration(
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(90)),
//                                                     height: 36,
//                                                     clipBehavior: Clip
//                                                         .antiAliasWithSaveLayer,
//                                                     child: MaterialButton(
//                                                       color: eswd,
//                                                       onPressed: () {Navigator.of(ctx).pop(false);},
//                                                       child: Text(
//                                                         'cancel',
//                                                         style: Theme.of(context)
//                                                             .textTheme
//                                                             .bodyText1!
//                                                             .copyWith(
//                                                                 color: abyd),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Container(
//                                                     decoration: BoxDecoration(
//                                                         borderRadius:
//                                                         BorderRadius
//                                                             .circular(90)),
//                                                     height: 36,
//                                                     clipBehavior: Clip
//                                                         .antiAliasWithSaveLayer,
//                                                     child: MaterialButton(
//                                                       color: eswd,
//                                                       onPressed: () {/*cubit.*/},
//                                                       child: Text(
//                                                         'delete',
//                                                         style: Theme.of(context)
//                                                             .textTheme
//                                                             .bodyText1!
//                                                             .copyWith(
//                                                             color: abyd),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ));
//                                     },
//                                     child: Container(
//                                       height: 52,
//                                       child: Row(
//                                         // crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Expanded(
//                                             child: Column(
//                                               children: [
//                                                 Container(
//                                                   width: double.infinity,
//                                                   height: 2,
//                                                   color: eswd,
//                                                 ),
//                                                 Padding(
//                                                   padding:
//                                                       const EdgeInsetsDirectional
//                                                           .only(start: 13),
//                                                   child: Container(
//                                                     child: Form(
//                                                         key: keys1[index],
//                                                         child: TextFormField(
//                                                           style:
//                                                               Theme.of(context)
//                                                                   .textTheme
//                                                                   .bodyText1!
//                                                                   .copyWith(
//                                                                       color:
//                                                                           eswd),
//                                                           cursorColor: rosasy,
//                                                           onChanged: (value) {
//                                                             //cubit.postCommentTextUpdateEnable();
//                                                           },
//                                                           validator: (value) {
//                                                             if (value!
//                                                                 .isEmpty) {
//                                                               return;
//                                                             }
//                                                           },
//                                                           controller:
//                                                               player1[index],
//                                                           decoration:
//                                                               InputDecoration(
//                                                             focusedBorder:
//                                                                 UnderlineInputBorder(
//                                                                     borderSide:
//                                                                         BorderSide
//                                                                             .none),
//                                                             enabledBorder:
//                                                                 UnderlineInputBorder(
//                                                                     borderSide:
//                                                                         BorderSide
//                                                                             .none),
//                                                             hintText: 'Score',
//                                                             hintStyle: Theme.of(
//                                                                     context)
//                                                                 .textTheme
//                                                                 .bodyText1!
//                                                                 .copyWith(
//                                                                     color:
//                                                                         rosasy),
//                                                           ),
//                                                         )),
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   width: double.infinity,
//                                                   height: 2,
//                                                   color: eswd,
//                                                 )
//                                               ],
//                                             ),
//                                           ),
//                                           Container(
//                                             color: eswd,
//                                             width: 2,
//                                             height: 52,
//                                           ),
//                                           Expanded(
//                                             child: Column(
//                                               children: [
//                                                 Container(
//                                                   width: double.infinity,
//                                                   height: 2,
//                                                   color: eswd,
//                                                 ),
//                                                 Padding(
//                                                   padding:
//                                                       const EdgeInsetsDirectional
//                                                           .only(start: 13),
//                                                   child: Container(
//                                                     child: Form(
//                                                         key: keys2[index],
//                                                         child: TextFormField(
//                                                           style:
//                                                               Theme.of(context)
//                                                                   .textTheme
//                                                                   .bodyText1!
//                                                                   .copyWith(
//                                                                       color:
//                                                                           eswd),
//                                                           cursorColor: rosasy,
//                                                           onChanged: (value) {
//                                                             //cubit.postCommentTextUpdateEnable();
//                                                           },
//                                                           validator: (value) {
//                                                             if (value!
//                                                                 .isEmpty) {
//                                                               return;
//                                                             }
//                                                           },
//                                                           controller:
//                                                               player2[index],
//                                                           decoration:
//                                                               InputDecoration(
//                                                             focusedBorder:
//                                                                 UnderlineInputBorder(
//                                                                     borderSide:
//                                                                         BorderSide
//                                                                             .none),
//                                                             enabledBorder:
//                                                                 UnderlineInputBorder(
//                                                                     borderSide:
//                                                                         BorderSide
//                                                                             .none),
//                                                             hintText: 'Score',
//                                                             hintStyle: Theme.of(
//                                                                     context)
//                                                                 .textTheme
//                                                                 .bodyText1!
//                                                                 .copyWith(
//                                                                     color:
//                                                                         rosasy),
//                                                           ),
//                                                         )),
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   width: double.infinity,
//                                                   height: 2,
//                                                   color: eswd,
//                                                 )
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
