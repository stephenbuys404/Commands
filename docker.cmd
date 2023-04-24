docker version

docker info

docker search httpd

docker pull httpd

docker logs -f cassandra

docker stop cassandra

docker rm cassandra

docker images

docker container ls

docker container ps

docker container run -d -p 8080:80 --name apacheinstance httpd

docker run -d --name cassandra-node -p 9042:9042 cassandra

docker container exec -it apacheinstance bash

docker exec -it cassandra-node bash
/# cqlsh
cqlsh>CREATE KEYSPACE test_ks WITH replication = {'class':'SimpleStrategy','replication_factor':1};
cqlsh>use test_ks;
cqlsh:test_ks>CREATE TABLE test_ks.user_dtl(user_id int PRIMARY KEY,user_name text,city text);
cqlsh:test_ks>INSERT INTO user_dtl(user_id,user_name,city) VALUES(1,'A','B');
cqlsh:test_ks>SELECT * FROM user_dtl;

