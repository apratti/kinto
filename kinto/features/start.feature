Feature: When I start Kinto without intilizing 
         and migrating it should do init and migrate automatically
  
Scenario: Kinto start with init and migrate
   Given kinto init occured
   And   kinto migrate occured
   When kinto is started
   Then kinto should start

Scenario: Kinto start without init and migrate
   Given nothing
   When kinto is started
   Then kinto should start

