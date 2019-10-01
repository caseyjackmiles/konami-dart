import 'dart:html';

const keyCodes = [
  KeyCode.UP,
  KeyCode.UP,
  KeyCode.DOWN,
  KeyCode.DOWN,
  KeyCode.LEFT,
  KeyCode.RIGHT,
  KeyCode.LEFT,
  KeyCode.RIGHT,
  KeyCode.B,
  KeyCode.A
];

Future<bool> checkCodeEntry() async {
  await for (int nextKeyCode in Stream.fromIterable(keyCodes)) {
    await for (KeyboardEvent event in window.onKeyUp) {
      if (event.keyCode == nextKeyCode) break;
      return false;
    }
  }
  return true;
}

void main() async {
  var codeEntered = false;
  while (!codeEntered) {
    codeEntered = await checkCodeEntry();
  }
  document.dispatchEvent(Event('konami'));
}
