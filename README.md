# Relational Database Management System
- 关系型数据库管理系统（RDBMS）
1. MYSQL
2. Oracle 
3. SQLServer
4. PostgreSQL


## 学生成绩数据库设计
该学生成绩管理系统
1. 每个实体转化为一个关系模式。
2. 实体的属性作为关系模式的属性
3. 实体的码作为关系模式的主键.
由此，进一步作出关系模型分析表的结构和表之间的关联关系：

![image](https://github.com/Jooeys/OracleDatabaseSummary/blob/master/img1.png)

- 在学生成绩数据库设计中， 学生表有4个字段，设置学号student_num为主键；课程表有4个字段，设置课程号course_num主键；分数表有4个字段，设置score id为主键。
- MySQL通过外键约束来保证表与表之间的数据的完整性和准确性，MySQL通过外键约束来保证表与表之间的数据的完整性和准确性。所以在1对多 通过主键外键的关系来实现，多对多 通过一个中间表来进行实现。
- 具体来说是ON DELETE CASCADE ON UPDATE CASCADE使用级联限制就实现同步删除数据和更新数据。

```
CONSTRAINT `score_ibfk_1` FOREIGN KEY (`course_num`) REFERENCES `course` (`course_num`) ON DELETE CASCADE ON UPDATE CASCADE,  
CONSTRAINT `score_ibfk_2` FOREIGN KEY (`student_num`) REFERENCES `student` (`student_num`) ON DELETE CASCADE ON UPDATE CASCADE
```
## SQL语句练习
1. 表字段的内容有误，如何修改。学号有误，进行修改如下

```
DELETE FROM  student WHERE student_num=15001;
```
2. 表字段的顺序需要调整，如何修改

```
SELECT * from score ORDER BY score DESC;（倒序）
SELECT * from score ORDER BY score ASC;（顺序）
```
3. 学生信息录入错误如何修改

```
UPDATE course SET course_name='Python编程设计' WHERE course_num=1;
```
4. 筛选出学生的最高成绩。查询每个科目的最高分

```
SELECT course_num, MAX(score) as score from score GROUP BY course_num;
```
5. 计算学生成绩的平均值。这里根据课程分组来计算平均分。
   
```
SELECT AVG(score) FROM score GROUP BY course_num;
```



