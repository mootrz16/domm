import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/cubit/one/one_cubit.dart';
import 'package:project1/cubit/one/one_states.dart';
import 'package:project1/elsbora/elsbora.dart';
import 'package:project1/layout/layout_page.dart';
import 'package:project1/shared/constants.dart';

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OneCubit, OneStates>(
        listener: (context, state) {},
        builder: (context, state) {
          OneCubit cubit = OneCubit.get(context);
          return Scaffold(
            appBar: AppBar(

                backgroundColor: nbete,
                elevation: 0,
                systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: nbete,
                    statusBarIconBrightness: Brightness.light),
                centerTitle: true,
                title: Text(
                  'شيش بيش',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: abyd, fontSize: 27, fontWeight: FontWeight.bold),
                )),
            body: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 5,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Container(
                        width: double.infinity,
                        height: 80,
                        color: nbete,
                        child: Material(
                          color: nbete,
                          child: InkWell(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>elsbora()));},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(width: 25,),
                                Text(
                                  "NEW GAME TEMP",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          color: abyd,
                                          fontSize: 27,
                                          fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                Spacer(),
                                Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Icon(Icons.arrow_forward_ios)),
                                SizedBox(width: 10,),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      bottom: 16,
                      start: 16,
                      end: 16
                    ),
                    child: Card(
                      elevation: 5,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Container(
                        width: double.infinity,
                        height: 80,
                        color: nbete,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "  NEW GAME TEMP",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                    color: abyd,
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              Spacer(),
                              Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle
                                  ),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: MaterialButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>layout_page()));},
                                    child: Icon(Icons.arrow_forward_ios),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
