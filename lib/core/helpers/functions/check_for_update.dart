// import 'package:flutter/material.dart';
// import 'package:package_info_plus/package_info_plus.dart';
// import 'package:version/version.dart';
// import '../../../features/check_new_version/ui/show_update_dialog.dart';
//
// // // Compare versions without build number => EX:(1.0.0)
// Future<void> checkForUpdate(BuildContext context) async {
//  try {
//   final remoteConfig = FirebaseRemoteConfig.instance;
//   await remoteConfig.setConfigSettings(RemoteConfigSettings(
//    fetchTimeout: const Duration(seconds: 10),
//    minimumFetchInterval: const Duration(minutes: 5),
//   ));
//
//   await remoteConfig.fetch();
//   await remoteConfig.fetchAndActivate();
//   String minVersion = remoteConfig.getString('minimum_version_android');
//
//   PackageInfo packageInfo = await PackageInfo.fromPlatform();
//   String currentVersion = '${packageInfo.version}+${packageInfo.buildNumber}';
//
//   debugPrint('minVersion:$minVersion');
//   debugPrint('currentVersion:$currentVersion');
//
//   if (currentVersion.compareTo(minVersion) < 0) {
//    debugPrint('You must update');
//    WidgetsBinding.instance.addPostFrameCallback((_) {
//     showUpdateDialog(context);
//    });
//   }
//  } catch (e) {
//   debugPrint("Error fetching remote config: $e");
//  }
// }
//
//
// //  // Compare versions with build number => EX:(1.0.0+5)
// //
// // Future<void> checkForUpdate(String minRequiredVersion, BuildContext context) async {
// // //علشان نعرف ال current version
// //  PackageInfo packageInfo = await PackageInfo.fromPlatform();
// //  String currentVersionStr = "${packageInfo.version}+${packageInfo.buildNumber}";
// //
// //  // علشان نقدر نعرف ال build number اللي بيكون بععد علامة +
// //  List<String> currentParts = currentVersionStr.split('+');
// //  List<String> minParts = minRequiredVersion.split('+');
// //
// //  Version currentVersion = Version.parse(currentParts[0]);
// //  Version minVersion = Version.parse(minParts[0]);
// //
// //  int currentBuild = int.parse(currentParts.length > 1 ? currentParts[1] : "0");
// //  int minBuild = int.parse(minParts.length > 1 ? minParts[1] : "0");
// //
// //  debugPrint("🔹 currentVersion: $currentVersion+$currentBuild");
// //  debugPrint("🔹 minVersion: $minVersion+$minBuild");
// //
// //  //و هنا بنقارن بين الاصدار الرئيسي لو الحالي اقل من ال min بيطلت تحديث طيب لو الحالي يساوي ال min ف هنبدأ نقارن برقم ال build number
// //  if (currentVersion < minVersion || (currentVersion == minVersion && currentBuild < minBuild)) {
// //   debugPrint("update required");
// //   showUpdateDialog(context);
// //  } else {
// //   debugPrint("the app is updated");
// //  }
// // }