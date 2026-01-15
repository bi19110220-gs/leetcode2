1-- answer rate = answer/show
2select question_id as survey_log
3from SurveyLog 
4group by question_id 
5order by sum(case when action = 'answer' then 1 else 0 end)/sum(case when action = 'show' then 1 else 0 end) desc,
6question_id asc
7limit 1