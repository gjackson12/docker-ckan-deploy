# Docker Postgres image for use with dockerized CKAN

To run locally
- checkout
- docker build -t picturae/ckan-postgres:9.6 .
- docker run -d --name picturae-ckan-postgres -p 5432:5432 picturae/ckan-postgres:9.6

