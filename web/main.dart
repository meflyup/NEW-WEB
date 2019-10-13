import 'dart:html';
import 'dart:math';


Element name;
ButtonElement CallButton;
List<String> scrabbleLetters = ['1','2','3','4','5','6','7','8','9','10'];

void main() {
  name = querySelector("#name");

  CallButton = querySelector("#CallButton");
  CallButton.onClick.listen(newname);

}


void newname(Event e) {
  name.children.clear();
  generateNewname();
}

generateNewname() {
  Random indexGenerator = new Random();
  int NameIndex = indexGenerator.nextInt(10);
  ButtonElement Button = new ButtonElement();
  Button.classes.add("name");
  Button.text = scrabbleLetters[NameIndex];
  name.children.add(Button);
}
