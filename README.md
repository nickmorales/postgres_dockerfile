# Nick's version of the Breedbase PostgreSQL Docker

- This is an empty database for Breedbase. It is loaded with all the necessary initial data needed for Breedbase.

- This Docker image should be started using the Breedbase web Docker compose file [here](https://github.com/nickmorales/breedbase_dockerfile).

- The database is named `empty_fixture` and is loaded with SQL from [SGN](https://github.com/solgenomics/sgn/blob/master/t/data/fixture/empty_fixture.sql).

- The database has a user named 'janedoe' with password 'secretpw' for easy logging in.
