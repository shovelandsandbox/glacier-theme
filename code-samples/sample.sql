# Sample SQL file

CREATE DATABASE IF NOT EXISTS meta;

CREATE TABLE IF NOT EXISTS meta.cluster (
  anchor TINYINT NOT NULL,
  server_alias VARCHAR(128) CHARSET ascii NOT NULL DEFAULT '',
  instance_name VARCHAR(128) CHARSET ascii NOT NULL DEFAULT '',
  cluster_domain VARCHAR(128) CHARSET ascii NOT NULL DEFAULT '',
  repl_user VARCHAR(128) CHARSET ascii NOT NULL DEFAULT '',
  repl_pass VARCHAR(128) CHARSET ascii NOT NULL DEFAULT '',
  PRIMARY KEY (anchor)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO meta.cluster (
    anchor,
    server_alias,
    instance_name,
    cluster_domain,
    repl_user)
VALUES (1,
    'mysql-test',
    'mysqld1',
    'mysql-vip-1',
    'replication')
ON DUPLICATE KEY 
UPDATE 
    server_alias=VALUES(server_alias),
    instance_name=VALUES(instance_name),
    cluster_domain=VALUES(cluster_domain);

