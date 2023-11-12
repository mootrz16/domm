import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/cubit/one/one_states.dart';

import '../../shared/constants.dart';
class OneCubit extends Cubit<OneStates> {
  OneCubit() : super(OneInitialState());

  static OneCubit get(context) {
    return BlocProvider.of(context);
  }

void zhor(rkm)
{
  if (rkm == 1 )
  {
    zhor1 = false;
  }
  else if (rkm == 2 )
  {
    zhor2 = false;
  }
  else if (rkm == 3 )
  {
    zhor3 = false;
  }
  else if (rkm == 4 )
  {
    zhor4 = false;
  }
  else if (rkm == 5 )
  {
    zhor5 = false;
  }
  else if (rkm == 6 )
  {
    zhor6 = false;
  }
  else if (rkm == 7 )
  {
    zhor7 = false;
  }
  else if (rkm == 8 )
  {
    zhor8 = false;
  }
  else if (rkm == 9 )
  {
    zhor9 = false;
  }
  else if (rkm == 10 )
  {
    zhor10 = false;
  }
  else if (rkm == 11 )
  {
    zhor11 = false;
  }
  else if (rkm == 12 )
  {
    zhor12 = false;
  }
  else if (rkm == 13 )
  {
    zhor13 = false;
  }
  else if (rkm == 14 )
  {
    zhor14 = false;
  }
  else if (rkm == 15 )
  {
    zhor15 = false;
  }
  else if (rkm == 16 )
  {
    zhor16 = false;
  }
  else if (rkm == 17 )
  {
    zhor17 = false;
  }
  else if (rkm == 18 )
  {
    zhor18 = false;
  }
  else if (rkm == 19 )
  {
    zhor19 = false;
  }
  else if (rkm == 20 )
  {
    zhor20 = false;
  }
  else if (rkm == 21 )
  {
    zhor21 = false;
  }
  else if (rkm == 22 )
  {
    zhor22 = false;
  }
  else if (rkm == 23 )
  {
    zhor23 = false;
  }
  else if (rkm == 24 )
  {
    zhor24 = false;
  }
  else if (rkm == 25 )
  {
    zhor25 = false;
  }
  else if (rkm == 26 )
  {
    zhor26 = false;
  }
  else if (rkm == 27 )
  {
    zhor27 = false;
  }
  else if (rkm == 28 )
  {
    zhor28 = false;
  }

  undo.add(rkm);
  redo = [];
  emit(OneDisableState());
}

void undoo()
{
  if(undo[undo.length-1] == 1)
  {
    zhor1 = true;
  }
  else if(undo[undo.length-1] == 2)
  {
    zhor2 = true;
  }
  else if(undo[undo.length-1] == 3)
  {
    zhor3 = true;
  }
  else if(undo[undo.length-1] == 4)
  {
    zhor4 = true;
  }
  else if(undo[undo.length-1] == 5)
  {
    zhor5 = true;
  }
  else if(undo[undo.length-1] == 6)
  {
    zhor6 = true ;
  }
  else if(undo[undo.length-1] == 7)
  {
    zhor7 = true;
  }
  else if(undo[undo.length-1] == 8)
  {
    zhor8 = true;
  }
  else if(undo[undo.length-1] == 9)
  {
    zhor9 = true;
  }
  else if(undo[undo.length-1] == 10)
  {
    zhor10 = true;
  }
  else if(undo[undo.length-1] == 11)
  {
    zhor11 = true;
  }
  else if(undo[undo.length-1] == 12)
  {
    zhor12 = true;
  }
  else if(undo[undo.length-1] == 13)
  {
    zhor13 = true;
  }
  else if(undo[undo.length-1] == 14)
  {
    zhor14 = true;
  }
  else if(undo[undo.length-1] == 15)
  {
    zhor15 = true;
  }
  else if(undo[undo.length-1] == 16)
  {
    zhor16 = true;
  }
  else if(undo[undo.length-1] == 17)
  {
    zhor17 = true;
  }
  else if(undo[undo.length-1] == 18)
  {
    zhor18 = true;
  }
  else if(undo[undo.length-1] == 19)
  {
    zhor19 = true;
  }
  else if(undo[undo.length-1] == 20)
  {
    zhor20 = true;
  }
  else if(undo[undo.length-1] == 21)
  {
    zhor21 = true;
  }
  else if(undo[undo.length-1] == 22)
  {
    zhor22 = true;
  }
  else if(undo[undo.length-1] == 23)
  {
    zhor23 = true;
  }
  else if(undo[undo.length-1] == 24)
  {
    zhor24 = true;
  }
  else if(undo[undo.length-1] == 25)
  {
    zhor25 = true;
  }
  else if(undo[undo.length-1] == 26)
  {
    zhor26 = true;
  }
  else if(undo[undo.length-1] == 27)
  {
    zhor27 = true;
  }
  else if(undo[undo.length-1] == 28)
  {
    zhor28 = true;
  }
  redo.add(undo[undo.length-1]);
  undo.remove(undo[undo.length-1]);

  emit(OneUndoState());
}

void redoo()
{
  if (redo[redo.length-1] == 1 )
  {
    zhor1 = false;
  }
  else if (redo[redo.length-1] == 2 )
  {
    zhor2 = false;
  }
  else if (redo[redo.length-1] == 3 )
  {
    zhor3 = false;
  }
  else if (redo[redo.length-1] == 4 )
  {
    zhor4 = false;
  }
  else if (redo[redo.length-1] == 5 )
  {
    zhor5 = false;
  }
  else if (redo[redo.length-1] == 6 )
  {
    zhor6 = false;
  }
  else if (redo[redo.length-1] == 7 )
  {
    zhor7 = false;
  }
  else if (redo[redo.length-1] == 8 )
  {
    zhor8 = false;
  }
  else if (redo[redo.length-1] == 9 )
  {
    zhor9 = false;
  }
  else if (redo[redo.length-1] == 10 )
  {
    zhor10 = false;
  }
  else if (redo[redo.length-1] == 11 )
  {
    zhor11 = false;
  }
  else if (redo[redo.length-1] == 12 )
  {
    zhor12 = false;
  }
  else if (redo[redo.length-1] == 13 )
  {
    zhor13 = false;
  }
  else if (redo[redo.length-1] == 14 )
  {
    zhor14 = false;
  }
  else if (redo[redo.length-1] == 15 )
  {
    zhor15 = false;
  }
  else if (redo[redo.length-1] == 16 )
  {
    zhor16 = false;
  }
  else if (redo[redo.length-1] == 17 )
  {
    zhor17 = false;
  }
  else if (redo[redo.length-1] == 18 )
  {
    zhor18 = false;
  }
  else if (redo[redo.length-1] == 19 )
  {
    zhor19 = false;
  }
  else if (redo[redo.length-1] == 20 )
  {
    zhor20 = false;
  }
  else if (redo[redo.length-1] == 21 )
  {
    zhor21 = false;
  }
  else if (redo[redo.length-1] == 22 )
  {
    zhor22 = false;
  }
  else if (redo[redo.length-1] == 23 )
  {
    zhor23 = false;
  }
  else if (redo[redo.length-1] == 24 )
  {
    zhor24 = false;
  }
  else if (redo[redo.length-1] == 25 )
  {
    zhor25 = false;
  }
  else if (redo[redo.length-1] == 26 )
  {
    zhor26 = false;
  }
  else if (redo[redo.length-1] == 27 )
  {
    zhor27 = false;
  }
  else if (redo[redo.length-1] == 28 )
  {
    zhor28 = false;
  }
  undo.add(redo[redo.length-1]);
  redo.remove(redo[redo.length-1]);
  emit(OneRedoState());
}

void reset()
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
  emit(OneResetState());
}

}