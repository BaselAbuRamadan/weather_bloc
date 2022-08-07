part of 'theme_cubit.dart';

enum Apptheme {
  light,
  dark
}


class ThemeState extends Equatable{
  final Apptheme appTheme;

  factory ThemeState.initial(){
    return ThemeState();
  }
  @override
  List<Object> get props => [appTheme];

  const ThemeState({
    this.appTheme = Apptheme.light,
  });

  @override
  String toString() {
    return 'ThemeState{apptheme: $appTheme}';
  }

  ThemeState copyWith({
    Apptheme? appTheme,
  }) {
    return ThemeState(
      appTheme: appTheme ?? this.appTheme,
    );
  }
}
