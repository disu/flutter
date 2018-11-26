
// Note: Se usata come Mixin non può avere un costruttore.
class PageFramework {
  String _title = 'Titolo';

  set title(String value) {
    this._title = value;
  }

  String get title {
    return this._title;
  }
}
