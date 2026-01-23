# Write your MySQL query statement below

Select
        user_id,
        count(*) as prompt_count
        round(avg(tokens),2) as avg_tokens
    From prompts
    Group by user_id
    Having
        Count(*) >2
        and Max(tokens)>round(avg(tokens),2)
    Order By avg_tokens Descm user_id Asc;


