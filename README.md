# konami

Listens for users entering the [Konami Code](https://en.wikipedia.org/wiki/Konami_Code).

## usage

Add script:

```html
<script defer src="index.min.js"></script>
```

Add event listener to `document`:

```js
document.addEventListener('konami', function() {
  // do something
});
```

## dev

To generate JS code from Dart (requires Dart SDK):
```
dart2js -m -o index.min.js index.dart
```
