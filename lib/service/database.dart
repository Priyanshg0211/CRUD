import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethodas {
  // CREATE
  Future addEmployeeDetails(
      Map<String, dynamic> employeeInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("Employee")
        .doc(id)
        .set(employeeInfoMap);
  }

  // READ
  Future<Stream<QuerySnapshot>> getEmployeeDetails() async {
    return await FirebaseFirestore.instance.collection("Employee").snapshots();
  }

  // UPDATE
  Future updateEmployeeDeatil(
      String id, Map<String, dynamic> updateInfo) async {
    return await FirebaseFirestore.instance
        .collection("Employee")
        .doc(id)
        .update(updateInfo);
  }

  // DELETE
  Future deleteEmployeeDeatil(String id) async {
    var documentReference =
        FirebaseFirestore.instance.collection("Employee").doc(id);
    await documentReference.delete();
  }
}
