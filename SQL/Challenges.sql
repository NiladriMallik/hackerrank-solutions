with cte_1 as (
  select
    hac.hacker_id,
    hac.name,
    count(cha.challenge_id) as count_cha
  from hackers as hac
    left join challenges as cha
      on hac.hacker_id = cha.hacker_id
  group by hac.hacker_id, hac.name
),

cte_2 as (
  select
    *,
    count(*) over (partition by count_cha) as multi_students
  from cte_1
)

select
  hacker_id,
  name,
  count_cha
from cte_2
where count_cha = (select max(count_cha) from cte_2)
  or (count_cha != (select max(count_cha) from cte_2) and multi_students = 1)
order by count_cha desc, hacker_id asc;
