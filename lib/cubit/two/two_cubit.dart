import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/cubit/two/two_states.dart';

import '../../shared/constants.dart';

class TwoCubit extends Cubit<TwoStates> {
  TwoCubit() : super(TwoInitialState());

  static TwoCubit get(context) {
    return BlocProvider.of(context);
  }

  void addRound() {
    i++;
    keys1.add(GlobalKey());
    keys2.add(GlobalKey());
    player1.add(TextEditingController());
    player2.add(TextEditingController());
    emit(TwoAddRoundState());
  }

  void delete(index, context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: nbete,
      content: Row(
        children: [
          Icon(Icons.delete,color: abyd,),
          SizedBox(width: 6,),
          Text(
            'Successfully deleted',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(color: abyd),
          ),
        ],
      ),
    ));
    i--;
    keys1.remove(keys1[index]);
    keys2.remove(keys2[index]);
    player1.remove(player1[index]);
    player2.remove(player2[index]);
    emit(TwoDeleteRoundState());
  }

  void FScore1()
  {
    x1 = 0;
    for (int i = 0 ; i < player1.length ; i++)
    {
      if(player1[i].text.isEmpty == false)
      {
        x1 = x1 + int.parse(player1[i].text);
      }
    }
    emit(TwoFScore1State());
  }
  void FScore2()
  {
    x2 = 0;
    for (int i = 0 ; i < player2.length ; i++)
    {
      if(player2[i].text.isEmpty == false)
      {
        x2 = x2 + int.parse(player2[i].text);
      }
    }
    emit(TwoFScore2State());
  }
  void remove()
  {

    zhor1 = true;
    zhor2 = true;
    zhor3 = true;
    zhor4 = true;
    zhor5 = true;
    zhor6 = true;
    zhor7 = true;
    zhor8 = true;
    zhor9 = true;
    zhor10 = true;
    zhor11 = true;
    zhor12 = true;
    zhor13 = true;
    zhor14 = true;
    zhor15 = true;
    zhor16 = true;
    zhor17 = true;
    zhor18 = true;
    zhor19 = true;
    zhor20 = true;
    zhor21 = true;
    zhor22 = true;
    zhor23 = true;
    zhor24 = true;
    zhor25 = true;
    zhor26 = true;
    zhor27 = true;
    zhor28 = true;
    redo = [];
    undo = [];
    playerOneController.text = '';
    playerTwoController.text = '';
    player1=[];
    player2=[];
    keys1=[];
    keys2=[];
    x1=0;
    x2=0;
    i=0;
    emit(TwoRemoveState());
  }

}
