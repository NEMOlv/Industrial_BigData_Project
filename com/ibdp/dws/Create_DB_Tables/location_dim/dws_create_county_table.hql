-- 2. 位置维度表（县城粒度）
create external table if not exists one_make_dws.dim_location_county(
    id string comment 'id'
    , province_id string comment '省份ID'
    , province string comment '省份名称'
    , province_short_name string comment '省份短名称'
    , city_id string comment '城市ID'
    , city string comment '城市'
    , city_short_name string comment '城市短名称'
    , county_id string comment '县城ID'
    , county string comment '县城'
    , county_short_name string comment '县城短名称'
) comment '区域维度表（县城粒度）'
stored as orc
location '/data/dw/dws/one_make/dim_location_county'
;