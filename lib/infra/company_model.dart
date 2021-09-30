import 'package:infraaero_project/domain/company_entity.dart';

class CompanyModel extends CompanyEntity{

  const CompanyModel({  required String uuid, required String name, required String initials}) : super (uuid: uuid,name: name, initials: initials);

}