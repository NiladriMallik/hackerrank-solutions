with MarksTable as( 
select
st.name,
gr.grade,
st.marks
from students st
join
grades gr
on st.marks between gr.min_mark and gr.max_mark
-- where gr.grade >= 8
-- order by gr.grade desc, name asc
)
select 
case
    when grade <8 then "NULL"
    else name
end as name,
grade,
marks
from MarksTable
order by grade desc, name asc;
