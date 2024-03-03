-- 加载数据到位置（城市粒度表）
insert overwrite table one_make_dws.dim_location_city
select
    /*+repartition(1) */
    t_city.id as id,
    t_province.id as province_id,
    t_province.areaname as province,
    t_province.shortname as province_short_name,
    t_city.id as city_id,
    t_city.areaname as city,
    t_city.shortname as city_short_name
from
    one_make_dwd.ciss_base_areas t_city
    inner join one_make_dwd.ciss_base_areas t_province on t_city.rank =2 and t_city.parentid = t_province.id
    inner join one_make_dwd.ciss_base_areas t_nation on t_province.parentid = t_nation.id
;