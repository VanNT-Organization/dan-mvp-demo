// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:winca/src/configs/config.dart';
// import 'package:winca/src/shared_components/loading/loading.dart';

// import 'dialog_success.dart';

// enum ToastType { success, error, warning }

// Future showLoading() {
//   return showDialog(
//     barrierDismissible: false,
//     useSafeArea: false,
//     context: AppNavigator.context!,
//     builder: (context) => const Loading(),
//   );
// }

// Future showDialogSuccess(String title,
//     [String? desc, int timeForDismiss = 2000]) async {
//   await dialogAnimationWrapper(
//     timeForDismiss: timeForDismiss,
//     child: DialogSuccess(
//       text: title,
//       desc: desc,
//     ),
//   );
// }

// Future dialogAnimationWrapper({
//   child,
//   duration = 400,
//   backgroundColor = Colors.white,
//   timeForDismiss,
// }) {
//   if (timeForDismiss != null) {
//     Future.delayed(Duration(milliseconds: timeForDismiss), () {
//       AppNavigator.pop();
//     });
//   }

//   return showGeneralDialog(
//     transitionDuration: Duration(milliseconds: duration),
//     context: AppNavigator.context!,
//     pageBuilder: (_, __, ___) => child,
//     transitionBuilder: (_, anim, __, child) {
//       return SlideTransition(
//         position: Tween(begin: const Offset(0, 0), end: const Offset(0, 0))
//             .animate(anim),
//         child: child,
//       );
//     },
//   );
// }

// Future<bool?> showError(String? message) {
//   return Fluttertoast.showToast(
//     msg: message ?? 'Lỗi không xác định',
//     toastLength: Toast.LENGTH_SHORT,
//     gravity: ToastGravity.BOTTOM,
//     timeInSecForIosWeb: 1,
//     backgroundColor: Palette.red,
//     textColor: Palette.background,
//     fontSize: 14.0,
//   );
// }
