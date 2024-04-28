// import 'package:permission_handler/permission_handler.dart';

class PermissionUtil {
  // static Future<PermissionStatus> checkPermission() async {
  //   //当前权限
  //   bool access = false;
  //
  //   PermissionStatus status = await Permission.camera.status;
  //       // await PermissionHandler().checkPermissionStatus(PermissionGroup.camera);
  //   return status;
  // }
  //
  // static Future<bool> permissionIsAvailable() async{
  //   PermissionStatus status = await checkPermission();
  //   bool access = false;
  //   if (status == PermissionStatus.restricted || status == PermissionStatus.permanentlyDenied) {
  //
  //   } else if (status == PermissionStatus.denied || status == PermissionStatus.limited) {
  //
  //   } else if (status == PermissionStatus.granted) {
  //     access = true;
  //   } else {
  //
  //   }
  //   return access;
  // }
  //
  // static Future<PermissionStatus> requestPermission() async {
  //   // Map<PermissionGroup, PermissionStatus> permissions =
  //   //     await PermissionHandler().requestPermissions([PermissionGroup.camera]);
  //   var request = Permission.camera.request();
  //   print(request.toString());
  //   return request;
  // }
  //
  // static Future<bool> shouldShowRequestCameraPermissionRationale () async {
  //   var permission =await Permission.byValue(Permission.camera.value).shouldShowRequestRationale;
  //   return permission;
  // }
}
