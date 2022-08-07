part of 'temp_settings_cubit.dart';

enum TempUnit {
  celsius,
  fahrenhite,
}


class TempSettingsState
    extends Equatable {
  final TempUnit tempUnit;

  factory TempSettingsState.initial(){
    return  TempSettingsState();
  }
  @override
  String toString() {
    return 'TempSettings{tempUnit: $tempUnit}';
  }

  @override
  List<Object> get props => [tempUnit];

   TempSettingsState
      ({
    this.tempUnit = TempUnit.celsius,
  });

  TempSettingsState
  copyWith({
    TempUnit? tempUnit,
  }) {
    return TempSettingsState
      (
      tempUnit: tempUnit ?? this.tempUnit,
    );
  }
}