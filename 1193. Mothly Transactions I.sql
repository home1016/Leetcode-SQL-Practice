Select 
    Date_Format(trans_date, '%Y-%m') as 'month', 
    country, 
    Count(id) as trans_count, 
    Count(case when state = 'approved' then 1 end) as approved_count, 
    Sum(amount) as trans_total_amount,
    Sum(case when state = 'approved' then amount Else 0 End) as approved_total_amount
From Transactions
Group by country, month