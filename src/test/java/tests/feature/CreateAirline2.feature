@demo
Feature: Do some demo api requests

  Scenario: Post Create
    Given url 'https://reqres.in/api/users'
    And request {"name":"morpheus","job":"leader"}
    When method post
    Then status 201
    And print response

#  Scenario: put update
#    Given url 'https://reqres.in/api/users/2'
#    And request {"name":"morpheus","job":"leader"}
#    When method put
#    Then status 200
#    And match response == {"name":"morpheus","job":"zion resident","updatedAt":"2024-01-25T10:40:39.550Z"}

  Scenario: patch update
    Given url 'https://reqres.in/api/users/2'
    And request {"name":"morpheus","job":"leader"}
    When method patch
    Then status 200

  Scenario: delete
    Given url 'https://reqres.in/api/users/2'
    And request {"name":"morpheus","job":"leader"}
    When method delete
    Then status 204

  Scenario: delayed response
    Given url 'https://reqres.in/api/users?delay=3'
    When method get
    Then status 200
    And print response

  Scenario: delayed response2
    Given url 'https://reqres.in/api/users?delay=3'
    When method get
    Then status 200
    And print response

  @regression
  Scenario: delayed response3
    Given url 'https://reqres.in/api/users?delay=3'
    When method get
    Then status 200
    And print response

  @regression2
  Scenario: delayed response4
    Given url 'https://reqres.in/api/users?delay=3'
    When method get
    Then status 200
    And print response