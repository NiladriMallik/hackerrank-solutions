select round(s.lat_n, 4)
from station as s
where
  (select count(a.lat_n) from station as a where a.lat_n < s.lat_n) = (select count(a.lat_n) from station as a where a.lat_n > s.lat_n);
