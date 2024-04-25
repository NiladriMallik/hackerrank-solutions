with cte_1 as (
  select
    wand.id,
    prop.age,
    wand.coins_needed,
    wand.power,
    rank() over(partition by prop.age, wand.power order by wand.coins_needed) as rank_power
  from wands as wand
    left join wands_property as prop
      on wand.code = prop.code
  where prop.is_evil = 0
)

select
  id,
  age,
  coins_needed,
  power
from cte_1
where rank_power = 1
order by power desc, age desc;
