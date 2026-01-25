create database Hr_dataset;
use Hr_dataset;
select * from hr_analytics;

select distinct(count(EmpID)) from hr_analytics;
select count(*) from hr_analytics;

alter table hr_analytics rename column  ï»¿EmpID to EmpID;

-- employee 
select AgeGroup , Gender , count(EmpID) as total_emp from hr_analytics group by AgeGroup , Gender;
select Gender , count(EmpID) as total_emp from hr_analytics group by Gender;
select Department , count(EmpID) as total_emp from hr_analytics group by Department;
select MaritalStatus , count(EmpID) as total_emp from hr_analytics group by MaritalStatus;
select JobRole , count(EmpID) as total_emp from hr_analytics group by JobRole;

-- Attrition
select AgeGroup ,  count(Attrition) as left_emp from hr_analytics group by AgeGroup;
select Department ,  count(Attrition) as left_emp from hr_analytics group by Department;
select MaritalStatus ,  count(Attrition) as left_emp from hr_analytics group by MaritalStatus;
select Gender ,  count(Attrition) as left_emp from hr_analytics group by Gender;

-- salary
select Department , count(YearsAtCompany) as experience from hr_analytics group by Department;
select JobRole , sum(MonthlyIncome) as income from hr_analytics group by JobRole;
select Department , sum(MonthlyIncome) as income from hr_analytics group by Department;



