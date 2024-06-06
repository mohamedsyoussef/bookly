import 'package:bookly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Features/home/data/repos/home_repo_implementation.dart';
import 'core/routes/app_router.dart';

void main() {
  serviceLocatorSetUp();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => FeaturedBooksCubit(
                getIt.get<HomeRepoImplement>(),
              ),
            ),
            BlocProvider(
              create: (context) => NewestBooksCubit(
                getIt.get<HomeRepoImplement>(),
              ),
            )
          ],
          child: MaterialApp.router(
            theme: ThemeData.dark()
                .copyWith(scaffoldBackgroundColor: primaryColor),
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}
