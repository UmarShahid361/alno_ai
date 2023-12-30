

class Headers {
  static unAuthenticatedHeader(){
    return {"Accept" : "application/json", "Content-Type" : "application/json"};
  }
  static authenticatedHeader(String token){
    return {"Accept" : "application/json", "Content-Type" : "application/json", "Authorization" : "Bearer $token"};
  }
}
