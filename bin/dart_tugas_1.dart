import 'dart:io';
import 'dart:convert';
void main(List<String> arguments) {
  print("Input N");
  String? N=stdin.readLineSync();
  int NInt=int.parse(N!);


  //no 2
  int start=1;
  int end=NInt;
  for(int i=0;i<NInt;i++)
  {
    for(int j=NInt-1;j>=0;j--)
    {
      if(start>NInt){
        start=1;
      }
      if(j<i){
        stdout.write(" ");
      }
      else{
        stdout.write(start);
        start+=1;
      }  
    }
    for(int z=0;z<NInt;z++){
      if(end==0){
        end=NInt;
      }
       if(z<i){
        stdout.write(" ");
      }
      else{
        stdout.write(end);
        end--;
      }
    }
    print(""); 
  } 
}

