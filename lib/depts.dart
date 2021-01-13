import 'package:floor/floor.dart';
@entity
class Dept{
  @primaryKey
  final int id;
  final String deptType ;
  final String amount;
  final String name;
  String description;
 Dept(this.deptType, this.amount, this.name, this.description, this.id);
}

@dao
abstract class DeptDao{
@Query('SELECT * FROM Dept')
  Future<List<Dept>> findAllDept();

@Query('SELECT * FROM Dept WHERE id = :id')
  Stream<Dept> FindDeptById(int id);

@insert
  Future<void> insertDept(Dept dept);
}