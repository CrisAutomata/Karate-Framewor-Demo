- karate command line:
mvn test

- with runner (if no, it will take the default runner):
-Dtest=TestParallelRunner

- with tag
-Dkarate.options="--tags @regression"


full line:
mvn test  -Dkarate.options="--tags @demo"