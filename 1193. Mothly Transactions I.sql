/*
Intuition
First thing is to understand the question and observe the table. We need month, country, count of transaction, approved count, sum of transaction amount and finally a approved total amount as a outcome. Those are the things we put into Select row

Approach
Then, do what we can do first, say, country, trans_count, trams_total_amount. These three can directly write down in the select row. For the month we need to change the format from the trans_date. For that two approved column, we need to use case when for the condition of status = approved.

Lastly, obviosuly dont forget to group by the country and month at the end.
*/

Select 
    Date_Format(trans_date, '%Y-%m') as 'month', 
    country, 
    Count(id) as trans_count, 
    Count(case when state = 'approved' then 1 end) as approved_count, 
    Sum(amount) as trans_total_amount,
    Sum(case when state = 'approved' then amount Else 0 End) as approved_total_amount
From Transactions
Group by country, month
