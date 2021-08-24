In this exercise we will use `yugabyted` cli to create a single node yugabyteDB instance. The binaries are already available in this environment. Let's go ahead and create the DB instance.

To start the YugabyteDB instance, run the post install checks first:

```execute-1
/usr/local/yugabyte/bin/post_install.sh
```
followed by:

```execute-1
/usr/local/yugabyte/bin/yugabyted start --base_dir=$STORE/ybd1
```

The output of the above command would be similar to:
```
Starting yugabyted...
✅ System checks

+--------------------------------------------------------------------------------------------------+
|                                            yugabyted                                             |
+--------------------------------------------------------------------------------------------------+
| Status              : Running. Leader Master is present                                          |
| Web console         : http://127.0.0.1:7000                                                      |
| JDBC                : jdbc:postgresql://127.0.0.1:5433/yugabyte?user=yugabyte&password=yugabyte  |
| YSQL                : bin/ysqlsh   -U yugabyte -d yugabyte                                       |
| YCQL                : bin/ycqlsh   -u cassandra                                                  |
| Data Dir            : /opt/yugabyte/ybdb/ybdp1/data                                              |
| Log Dir             : /opt/yugabyte/ybdb/ybdp1/logs                                              |
| Universe UUID       : 7fe93b4f-e35c-416d-a0c1-590daedf269f                                       |
+--------------------------------------------------------------------------------------------------+
🚀 yugabyted started successfully! To load a sample dataset, try 'yugabyted demo'.
🎉 Join us on Slack at https://www.yugabyte.com/slack
👕 Claim your free t-shirt at https://www.yugabyte.com/community-rewards/

UNIVERSE STARTED
```

To verify the cluster status:
```execute-1
/usr/local/yugabyte/bin/yugabyted status --base_dir=$STORE/ybd1
```

The output of the above command would be similar to:
```
Starting yugabyted...
✅ System checks

+--------------------------------------------------------------------------------------------------+
|                                            yugabyted                                             |
+--------------------------------------------------------------------------------------------------+
| Status              : Running. Leader Master is present                                          |
| Web console         : http://127.0.0.1:7000                                                      |
| JDBC                : jdbc:postgresql://127.0.0.1:5433/yugabyte?user=yugabyte&password=yugabyte  |
| YSQL                : bin/ysqlsh   -U yugabyte -d yugabyte                                       |
| YCQL                : bin/ycqlsh   -u cassandra                                                  |
| Data Dir            : /opt/yugabyte/ybdb/ybdp1/data                                              |
| Log Dir             : /opt/yugabyte/ybdb/ybdp1/logs                                              |
| Universe UUID       : 7fe93b4f-e35c-416d-a0c1-590daedf269f                                       |
+--------------------------------------------------------------------------------------------------+
```

Click the below url to access the dashboard:

```dashboard:create-dashboard
name: Yugabytddb dashbaord
url: http://localhost:7000
```