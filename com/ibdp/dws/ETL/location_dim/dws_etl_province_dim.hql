-- 加载数据到位置（省份粒度表）
insert overwrite table one_make_dws.dim_location_province
select
    /*+repartition(1) */
    t_province.id as id,
    t_province.id as province_id,
    t_province.areaname as province,
    t_province.shortname as province_short_name
from
    one_make_dwd.ciss_base_areas t_province
    inner join one_make_dwd.ciss_base_areas t_nation on t_province.rank =1 and t_province.parentid = t_nation.id
;