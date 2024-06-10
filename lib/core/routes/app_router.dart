import 'package:bookly_app/Features/home/presentation/manager/similiar_books_cubit/similiar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/book_details_screen.dart';
import 'package:bookly_app/Features/home/presentation/views/home_screen.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_screen.dart';
import 'package:bookly_app/core/routes/routes.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/data/models/book_model/book_model.dart';
import '../../Features/home/data/repos/home_repo_implementation.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: bookDetailsScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => SimiliarBooksCubit(
            getIt.get<HomeRepoImplement>(),
          ),
          child:  BookDetailsScreen( bookModel: state.extra as BookModel,),
        ),
      ),
    ],
  );
}
