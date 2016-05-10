SQL语句：

1. hive上创建一个表，将外部txt文件数据导入到表中

1) 创建外部txt文件数据集T1.txt，数据间Tab键

001 AA  120
002 BB  130

2) hive上建表
 create external table T1(
   id string,
   name string,
   time string)
   row format delimited
   fields terminated by '\t'
   stored as textfile;
   
3) 导入txt
   load data local inpath '/home/tkonline/T1.txt' into table T1;   