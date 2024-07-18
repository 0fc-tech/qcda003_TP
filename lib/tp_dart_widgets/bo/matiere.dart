class Matiere{
  final String nomMatiere;
  final List<double> notes;

  const Matiere({
    required this.nomMatiere,
    required this.notes,
  });

  double moyenne() =>
      notes.reduce((a,b)=>a+b) /
      notes.length;
}