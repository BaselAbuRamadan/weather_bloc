import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_bloc/constants/constants.dart';
import 'package:weather_bloc/cubits/weather/weather_cubit.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  late final StreamSubscription weatherSubscribtion;

  final WeatherCubit weatherCubit;
  ThemeCubit({
    required this.weatherCubit
 }) : super(ThemeState.initial()){
    weatherSubscribtion =
        weatherCubit.stream.listen((WeatherState weatherState) {

         if(weatherState.weather.temp > kWarmOrNot){
           emit(state.copyWith(appTheme: Apptheme.light));
         }
         else{
           emit(state.copyWith(appTheme: Apptheme.dark));}

    });
  }
  @override
  Future<void> close() {
    // TODO: implement close
    weatherSubscribtion.cancel();
    return super.close();
  }
}
