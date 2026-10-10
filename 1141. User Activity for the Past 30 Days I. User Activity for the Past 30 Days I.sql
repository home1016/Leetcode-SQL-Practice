/*
Intuition: 
A basic conditiional search in table
Approach: 
1. Observe table Activity 
2. Define outcome => activity_date and number of user per day
3. Put where for the search requirement which will be something in activity_type and the date requirement
4. Present date for per day => Group by Date
*/

select activity_date as 'day', count(distinct user_id) as active_users
from Activity
where activity_type is not null
And activity_date between '2019-06-28' and '2019-07-27'
group by activity_date
