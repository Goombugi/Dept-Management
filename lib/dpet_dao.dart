import 'package:floor/floor.dart';
import 'depts.dart';
@dao
abstract class DeptDao {
  @Query('SELECT * FROM Dept')
  Future<List<Dept>> findAllPersons();

  @Query('SELECT * FROM Dept WHERE id = :id')
  Stream<Dept> findPersonById(int id);

  @insert
  Future<void> insertPerson(Dept dept);
}