-- 授予CDC账号必要权限（Debezium/Flink CDC均适用）
GRANT SELECT, RELOAD, SHOW DATABASES, REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'cdc_user'@'%';

-- 授予默认数据库的读写权限（如果需要CDC订阅时修改数据）
GRANT ALL PRIVILEGES ON cdc_demo.* TO 'cdc_user'@'%';

-- 刷新权限
FLUSH PRIVILEGES;