import 'dart:math';

class PasswordGenerator {
  static String generateRandomPassword() {
    List<String> allalphabets = 'abcdefghijklmnopqrstuvwxyz'.split('');
    List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    List<String> specailCharacters = ["@", "#", "%", "&", "*"];
    List<String> Password = [];
    for (int i = 0; i < 5; i++) {
      Password.add(allalphabets[Random().nextInt(allalphabets.length)]);
      Password.add(numbers[Random().nextInt(numbers.length)].toString());
      Password.add(
          specailCharacters[Random().nextInt(specailCharacters.length)]);
    }
    return Password.join();
  }
}

void main(List<String> args) {
  print(PasswordGenerator.generateRandomPassword());
}
