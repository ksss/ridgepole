TEST_MYSQL_HOST = ENV['DOCKER_HOST'] ? ENV['DOCKER_HOST'].gsub(%r{\Atcp://|:\d+\z}, '') : '127.0.0.1'
TEST_MYSQL_PORT = ENV['MYSQL57'] == '1' ? 13_317 : 13_316
TEST_MYSQL_USER = 'root'.freeze
TEST_MYSQL_PASS = 'password'.freeze

MYSQL_CLI = "mysql -h #{TEST_MYSQL_HOST} -P #{TEST_MYSQL_PORT} -u #{TEST_MYSQL_USER} -p#{TEST_MYSQL_PASS} 2>/dev/null".freeze

TEST_PG_HOST = ENV['DOCKER_HOST'] ? ENV['DOCKER_HOST'].gsub(%r{\Atcp://|:\d+\z}, '') : '127.0.0.1'
TEST_PG_PORT = 15_442
TEST_PG_USER = 'postgres'.freeze
TEST_PG_PASS = 'password'.freeze

PG_CLI_OPTS = "PGPASSWORD=#{TEST_PG_PASS} %s -h #{TEST_PG_HOST} -p #{TEST_PG_PORT} -U #{TEST_PG_USER}".freeze
PG_PSQL = PG_CLI_OPTS % 'psql'
PG_CREATEDB = PG_CLI_OPTS % 'createdb'
PG_DUMP = PG_CLI_OPTS % 'pg_dump'

TEST_SCHEMA = 'ridgepole_test'.freeze
