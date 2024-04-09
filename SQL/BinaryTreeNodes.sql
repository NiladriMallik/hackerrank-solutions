select 
N,
case
    when P is NULL then 'Root'
    when N in (select P from bst) then 'Inner'
    else 'Leaf'
end
from bst
order by N;
