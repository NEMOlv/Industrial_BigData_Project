-- 加载数据到位置（区域粒度表）
insert overwrite table one_make_dws.dim_location_area 
select
    /*+repartition(1) */
    t_area.id as id,
    t_province.id as province_id,
    t_province.areaname as province,
    t_province.shortname as province_short_name,
    t_city.id as city_id,
    t_city.areaname as city,
    t_city.shortname as city_short_name,
    t_county.id as county_id,
    t_county.areaname as county,
    t_county.shortname as county_short_name,
    t_area.id as area_id,
    t_area.areaname as area,
    t_area.shortname area_short_name
from
    one_make_dwd.ciss_base_areas t_area
    inner join one_make_dwd.ciss_base_areas t_county on t_area.rank = 4 and t_area.parentid = t_county.id
    inner join one_make_dwd.ciss_base_areas t_city on t_county.parentid = t_city.id
    inner join one_make_dwd.ciss_base_areas t_province on t_city.parentid = t_province.id
    inner join one_make_dwd.ciss_base_areas t_nation on t_province.parentid = t_nation.id
;
