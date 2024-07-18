
import 'bo/matiere.dart';

void main(){
  final francais = Matiere(
      nomMatiere: "francais",
      notes: [13.0,13.5,14.0]);
  final math = Matiere(
      nomMatiere: "math",
      notes: [8.0,8.5,9.0]);
  final informatique = Matiere(
      nomMatiere: "informatique",
      notes: [6.0,6.4,6.8]);
  moyenneGenerale([francais,math,informatique]);
}

void moyenneGenerale(List<Matiere> listMatiere){
  List<double> listeMoyennesMatiere = [];

  listMatiere.forEach((matiere){
    listeMoyennesMatiere.add(matiere.moyenne());
    print("La moyenne en ${matiere.nomMatiere} est de ${matiere.moyenne()}");
  });
  final moyenneGenerale =  listeMoyennesMatiere.reduce((a,b)=>a+b) /
      listeMoyennesMatiere.length;
  print("La moyenne générale est de ${moyenneGenerale}");
}