Feature: pyramid.route_path to build internal route_path

Scenario: a bucket is POSTed to kinto
    Given kinto init occured
      And kinto migrate occured
      And background kinto start
     When a bucket is posted with python http
     Then a bucket should be created

Scenario: a collection is POSTed to kinto
     When a collection is posted with python http
     Then a collection should be created

Scenario: a record is POSTed to kinto
     When a record is posted with python http
     Then a record should be created

Scenario: a record is GETten
     When I request to get a record with python http
     Then I get a record

Scenario: a record is DELETEd
     When I request a record is DELETEd with python http
     Then The record is delete

Scenario: a collection is GETten
     When I request to get a collection with python http
     Then I get a collection

Scenario: a collection is DELETEd
     When I request a collection is DELETEd with python http
     Then The collection is delete

Scenario: a bucket is GETten
     When I request to get a bucket with python http
     Then I get a bucket

Scenario: a bucket is DELETEd
     When I request a bucket is DELETEd with python http
     Then The bucket is delete
