import 'package:get/get.dart';
import 'package:project/cloude_page/application_model.dart';
import 'package:project/cloude_page/applications_data.dart';

class ApplicationsController extends GetxController {
  final selectedFilter = ApplicationStatus.values
      .map((_) => false)
      .toList()
      .obs;

  // null = الكل
  final Rx<ApplicationStatus?> activeFilter = Rx<ApplicationStatus?>(null);

  List<ApplicationModel> get filteredList {
    if (activeFilter.value == null) return ApplicationsData.applications;
    return ApplicationsData.applications
        .where((a) => a.status == activeFilter.value)
        .toList();
  }

  int get pendingCount => ApplicationsData.applications
      .where((a) => a.status == ApplicationStatus.pending)
      .length;

  int get acceptedCount => ApplicationsData.applications
      .where((a) => a.status == ApplicationStatus.accepted)
      .length;

  int get rejectedCount => ApplicationsData.applications
      .where((a) => a.status == ApplicationStatus.rejected)
      .length;

  void setFilter(ApplicationStatus? status) {
    activeFilter.value = status;
  }

  void acceptApplication(String id) {
    // TODO: ربط API
    Get.snackbar('تم', 'تم قبول الطلب');
  }

  void rejectApplication(String id) {
    // TODO: ربط API
    Get.snackbar('تم', 'تم رفض الطلب');
  }
}
