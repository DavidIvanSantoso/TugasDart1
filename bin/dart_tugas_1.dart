import 'dart:io';
import 'dart:convert';
void main(List<String> arguments) {
  print("Input N");
  String? N=stdin.readLineSync();
  int NInt=int.parse(N!);

  //link github
  //https://github.com/DavidIvanSantoso/TugasDart1

  //no 1
  int cnt=0;
  for(int i=0;i<=(NInt/2).ceil();i++){
    for(int j=i;j<(NInt/2).ceil();j++){
      if(i!=0){
        stdout.write("*");
      }
    }
    for(int z=0;z<i;z++){
      stdout.write(cnt);
      if(z+1!=i){
        stdout.write(" ");
      }
    }
    for(int j=i;j<(NInt/2).ceil();j++){
      if(i!=0){
         stdout.write("*");
      }
    }
    print("");
    cnt++;
  }
  for(int i=(NInt/2).floor();i>0;i--){
    for(int j=(NInt/2).floor();j>=i;j--){
      if(i!=0){
        stdout.write("*");
      }
    }
    for(int z=0;z<i;z++){
      stdout.write(cnt);
      if(z+1!=i){
        stdout.write(" ");
      }
    }
    for(int j=(NInt/2).floor();j>=i;j--){
      if(i!=0){
         stdout.write("*");
      }
    }
    print("");
    cnt++;
  }
  print ("");

  //no 2 
  int start=1;
  int end=NInt;
  for(int i=0;i<NInt;i++)
  {
    for(int j=NInt-1;j>=0;j--)
    {
      if(j<i){
        stdout.write(" ");
      }
      else{
        stdout.write(start);
        start+=1;
      } 
      if(start>NInt){
        start=1;
      } 
    }
    for(int z=0;z<NInt;z++){
       if(z<i){
        stdout.write(" ");
      }
      else{
        stdout.write(end);
        end--;
      }
       if(end==0){
        end=NInt;
      }
    }
    print(""); 
  } 
}

