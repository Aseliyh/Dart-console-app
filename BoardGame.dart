import 'dart:io';

void main() {
  
  List<String> gameBoard = List.filled(9, ' '); 
printBoard(gameBoard); //call the print method
startTheGame(gameBoard); //call the method to start the game
}
// This method to print the gameBoard
void printBoard(List<String> gameBoard) {
  // Prints the Tic-Tac-Toe board in 3x3 grid format
  print('${gameBoard[0]} | ${gameBoard[1]} | ${gameBoard[2]}');
  print('--+---+--');
  print('${gameBoard[3]} | ${gameBoard[4]} | ${gameBoard[5]}');
  print('--+---+--');
  print('${gameBoard[6]} | ${gameBoard[7]} | ${gameBoard[8]}');
}
// method to start the game with allow the user to choose between X or O
void startTheGame(List<String> gameBoard){
    print('Choose X or O?');
    String playerChoice = stdin.readLineSync()!;
    if(playerChoice == 'x'){
   for (int i = 1; i <= 9; i++) {
    print("Player x your turn:");
    int x = int.parse(stdin.readLineSync()!);
    if (x <=9 && x > 0 && gameBoard[x]==null) {
        gameBoard[x] = 'x';
        printBoard(gameBoard);

        }
      int o = int.parse(stdin.readLineSync()!);
        if(o <=9 && o > 0 && gameBoard[o]==null){
          gameBoard[o] = 'O';
          printBoard(gameBoard);
        }
   }
   }

    
    
    else if(playerChoice == 'O'){
      for (int i = 1; i <= 9; i++) {
    print("Player O your turn:");
    int o= int.parse(stdin.readLineSync()!);
    if (o <=9 && o > 0 && gameBoard[o]==null) {
        gameBoard[o] = 'O';
        printBoard(gameBoard);

    }
      int X = int.parse(stdin.readLineSync()!);
        if(X <=9 && X > 0 && gameBoard[X]==null){
          gameBoard[X] = 'X';
          printBoard(gameBoard);
        }
      
      } 
   }
    
      
      else  {
     print('Failed! Try Again');

      }
    }
  // the winner method, to know whos the winner according to the rulls of winning
 void theWinner(List<String> gameBoard){
  if(gameBoard[0]== gameBoard[1] 
      && gameBoard[1] == gameBoard[2]){
        print(gameBoard[0]);
      }
      else if(gameBoard[3]== gameBoard[4] && gameBoard[3] == gameBoard[5]){
        print(gameBoard[3]);
      }
      else if( gameBoard[6] == gameBoard[7] && gameBoard[6]==gameBoard[8]){
        print(gameBoard[6]);
        
      }
      else if(gameBoard[0]==gameBoard[4] && gameBoard[0] == gameBoard[8]){

      print(gameBoard[0]);
      }
      else if(gameBoard[2] == gameBoard[4] && gameBoard[2] == gameBoard[6]){
        print(gameBoard[2]);
      }
      else if(gameBoard[1]==gameBoard[4] && gameBoard[1]== gameBoard[7]){
        print(gameBoard[1]);
      }
      else{
        print('No Winner, play Again');
        startTheGame(gameBoard);
      }
 }

