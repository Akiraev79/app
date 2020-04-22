import 'package:flutter_test/flutter_test.dart';
import 'package:tennis_play_all/model/service.dart';

void main() {

//  Feature: Invoke RESTful APIs from Flutter
// Scenario: Client requests more than one instance of Service
//    Given I (client class) have to call one API request
//     When I (client class) ask to receive the Service's instance more than once
//     Then I (client class) should receive the same Service's instance  
  test('Should return only one instance of the class Service', (){
    
    // Setup
    Service service1;
    Service service2;

    // Exercise
    service1 = Service.instance;
    service2 = Service.instance;

    // Verify
    expect(service1, service2);

    // TearDown
    
  });

//  Feature: Invoke RESTful APIs from Flutter
// Scenario: Client requests to authenticate the email and password
//    Given I (client class) have to authenticate the email
//      and I have to authenticate password
//     When I (client class) ask for the backend to authenticate the email and password
//     Then I (client class) should receive the user's data.  
  test('Should return data regarding the user (approve access - POST Login)', (){
    
    // Setup
    Service service = Service.instance;
    String body = '{"user_login": "vtf.fatec@hotmail.com", "user_password": "111"}'; // Just to isolate a particular test.
    String urn = '/auth/login';

    // Exercise
    Future<String> bodyResponse = service.post(body, urn);

    // Verify
    expect(bodyResponse, isNotNull);

    // TearDown

  });

// TO-DO - Implementar os testes unitários para os demais métodos da classe Service. Atualmente as APIs estão com problema (CodeIgniter/ MySQL).
//  Feature: Invoke RESTful APIs from Flutter
// Scenario: Client requests to get resource's data
//    Given I (client class) have to process resource's data
//     When I (client class) ask for a specific resource's data
//     Then I (client class) should receive the resource's data.  
  test('Should return data regarding the resource (GET)', (){
    
    // Setup

    // Exercise

    // Verify

    // TearDown

  });


}