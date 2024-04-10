select 
  sub.hacker_id,
  hac.name
from submissions sub inner join hackers hac on hac.hacker_id = sub.hacker_id
inner join challenges cha on sub.challenge_id = cha.challenge_id
inner join difficulty dif on dif.difficulty_level = cha.difficulty_level
where sub.score = dif.score
group by sub.hacker_id, hac.name
having count(*) > 1
order by count(*) desc, sub.hacker_id asc;
