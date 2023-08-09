import 'package:custom_calendar/calendar/presentation/views/calendar_screen.dart';
import 'package:custom_calendar/core/presentation/pages/main_page.dart';
import 'package:custom_calendar/core/resources/app_routes.dart';
import 'package:custom_calendar/other_pages/search_view.dart';
import 'package:custom_calendar/other_pages/tv_shows_view.dart';
import 'package:custom_calendar/other_pages/watchlist_view.dart';
import 'package:go_router/go_router.dart';

const String calendarPath = '/calendar';
const String tvShowsPath = '/tvShows';
const String searchPath = '/search';
const String watchlistPath = '/watchlist';

class AppRouter {
  GoRouter router = GoRouter(
    initialLocation: calendarPath,
    routes: [
      ShellRoute(
        builder: (context, state, child) => MainPage(child: child),
        routes: [
          GoRoute(
            name: AppRoutes.calendarRoute,
            path: calendarPath,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: CalendarView(),
            ),
          ),
          GoRoute(
            name: AppRoutes.tvShowsRoute,
            path: tvShowsPath,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: TVShowsView(),
            ),
          ),
          GoRoute(
            name: AppRoutes.searchRoute,
            path: searchPath,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: SearchView(),
            ),
          ),
          GoRoute(
            name: AppRoutes.watchlistRoute,
            path: watchlistPath,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: WatchlistView(),
            ),
          ),
        ],
      )
    ],
  );
}
