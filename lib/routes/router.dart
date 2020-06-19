import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/foundation.dart';
import 'package:learnupp/presentation/home_screen.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomeScreen homeScreen;
}
