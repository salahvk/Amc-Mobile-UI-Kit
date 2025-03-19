enum AMCButtonSize {

  /// This one adapts only width according to context(text)
  adapt(null, 56),

 /// This is default one used across app
  regular(double.infinity, 44),

  /// This is new one used on some cards with height as 40
  small(double.infinity, 38),
 

  large(double.infinity, 48),


  ;

  final double? width;
  final double height;
  const AMCButtonSize(this.width, this.height);
}
