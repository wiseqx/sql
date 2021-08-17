/* Write a SQL query to find all duplicate emails in a table named Person.

+----+---------+
| Id | Email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+
For example, your query should return the following for the above table:

+---------+
| Email   |
+---------+
| a@b.com |
+---------+
Note: All emails are in lowercase. */


select email
from Person
group by email
having count(Email)>1;

--or left join
select Distinct p.Email
from Person p
join Person e
on p.Email = e.Email
where p.id != e.id;
