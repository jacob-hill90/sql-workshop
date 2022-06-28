-- 1.1 Find which weather station has the highest temperature record.
select stations.name, tempf
from reports
  join stations on reports.station_id=stations.id
order by tempf desc
limit 1;

-- 1.2 Find which weather station has the coldest temperature record.
select stations.name, tempf
from reports
  join stations on reports.station_id=stations.id
order by tempf asc
limit 1;

-- 1.3 Find the hottest and coldest record for each station in a single query.
select stations.name, min(tempf), max(tempf)
from reports
  join stations on reports.station_id=stations.id
group by 1;