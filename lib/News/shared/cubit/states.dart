 abstract class AppState{}
 class IntiAppState extends AppState{}
 class ChangBottomBarIndix extends AppState{}

class GetSrLodinState extends AppState{}
class GetSrSuccSTate extends AppState{}
class GetSrErorrState extends AppState{
   final String error;
  GetSrErorrState(this.error);
 }
 class GetHeLodinState extends AppState{}
class GetHeSuccSTate extends AppState{}
class GetHeErorrState extends AppState{
   final String error;
  GetHeErorrState(this.error);
 }


 class Mood extends AppState{}
 class ChangLange extends AppState{}
 class ChangColor extends AppState{}
