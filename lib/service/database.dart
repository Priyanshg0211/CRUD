import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethodas {
  Future addEmployeeDetails(
      Map<String, dynamic> employeeInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("Employee")
        .doc(id)
        .set(employeeInfoMap);
  }

  Future<Stream<QuerySnapshot>> getEmployeeDetails() async {
    return await FirebaseFirestore.instance.collection("Employee").snapshots();
  }


  Future updateEmployeeDeatil(String id, Map<String, dynamic> updateInfo)async{
    return await FirebaseFirestore.instance
      .collection("Employee")
      .doc(id)
      .update(updateInfo);
  }
}
