part of 'app_pages.dart';

abstract class Routes {
  static const login = _Paths.login;
  static const uploadDocs = _Paths.uploadDocs;
  static const viewDocs = _Paths.viewDocs;
  static const dashboard = _Paths.dashboard;
}

abstract class _Paths {
  static const login = '/login/';
  static const uploadDocs = '/upload_docs/';
  static const viewDocs = '/view_docs/';
  static const dashboard = '/dashboard/';
}