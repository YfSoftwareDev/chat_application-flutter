part of 'subscribe_bloc.dart';

abstract class SubscribeEvent extends Equatable {
  const SubscribeEvent();

  @override
  List<Object> get props => [];
}

class SubscribeUserEvent extends  SubscribeEvent {
  late User user;
  late String configePassword;
  SubscribeUserEvent({required this.user ,required this.configePassword});


}
