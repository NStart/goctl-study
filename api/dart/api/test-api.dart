import 'api.dart';
import '../data/test-api.dart';

/// test-api

/// --/users/id/:userId--
///
/// request: request
/// response: response
Future getUser(
	
	
    {Function(response)? ok,
    Function(String)? fail,
    Function? eventually}) async {
  await apiGet("/users/id/:userId",
  	 ok: (data) {
    if (ok != null) ok(response.fromJson(data));
  }, fail: fail, eventually: eventually);
}

/// --/users/create--
///
/// request: request
/// response: 
Future createUser(
	
	request request,
    {Function()? ok,
    Function(String)? fail,
    Function? eventually}) async {
  await apiPost("/users/create",request,
  	 ok: (data) {
    if (ok != null) ok();
  }, fail: fail, eventually: eventually);
}

