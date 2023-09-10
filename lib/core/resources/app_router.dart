import 'package:custom_calendar/core/presentation/pages/main_page.dart';
import 'package:custom_calendar/core/resources/app_routes.dart';
import 'package:custom_calendar/home/home.dart';
import 'package:custom_calendar/movies/movies.dart';
import 'package:custom_calendar/notification/notification.dart';
import 'package:custom_calendar/other_pages/detail/detail.dart';
import 'package:custom_calendar/other_pages/search_view.dart';
import 'package:custom_calendar/other_pages/tv_shows_view.dart';
import 'package:custom_calendar/other_pages/watchlist_view.dart';
import 'package:custom_calendar/profile/profile.dart';
import 'package:custom_calendar/saved/saved.dart';
import 'package:custom_calendar/search/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

const String calendarPath = '/calendar';
const String homePath = '/home';
const String savedPath = '/saved';
const String searchPath = '/search';
const String profilePath = '/profile';
const String detailPath = '/detail';
const String notificationPath = '/notification';
const String moviesPath = '/movies';

class AppRouter {
  GoRouter router = GoRouter(
    initialLocation: homePath,
    routes: [
      ShellRoute(
        builder: (context, state, child) => MainPage(child: child),
        routes: [
          GoRoute(
            name: AppRoutes.homeRoute,
            path: homePath,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: Home(),
            ),
          ),
          GoRoute(
            name: AppRoutes.savedRoute,
            path: savedPath,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: Saved(),
            ),
          ),
          GoRoute(
            name: AppRoutes.searchRoute,
            path: searchPath,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: Search(),
            ),
          ),
          GoRoute(
            name: AppRoutes.profileRoute,
            path: profilePath,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: Profile(),
            ),
          ),
        ],
      ),
      GoRoute(
        path: detailPath,
        name: AppRoutes.detailRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const Detail();
        },
      ),
      GoRoute(
        path: notificationPath,
        name: AppRoutes.notificationRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const Notifications();
        },
      ),
      GoRoute(
        path: moviesPath,
        name: AppRoutes.moviesRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const Movies();
        },
      ),
    ],
  );
}
