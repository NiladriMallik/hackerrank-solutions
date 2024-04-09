with MarksTable as( 
select
    st.name,
    gr.grade,
    st.marks
from students st
    join grades gr
on st.marks between gr.min_mark and gr.max_mark
)
select 
    name,
    grade,
    marks
from MarksTable
where grade >= 8
    union
select 
    'NULL' as name,
    grade,
    marks
from MarksTable
where grade < 8
order by grade desc, name asc;
