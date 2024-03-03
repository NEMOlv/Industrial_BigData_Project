-- 4. 位置维度表（省份粒度）
create external table if not exists one_make_dws.dim_location_province(
    id string comment 'id'
    , province_id string comment '省份ID'
    , province string comment '省份名称'
    , province_short_name string comment '省份短名称'
) comment '区域维度表（省份粒度）'
stored as orc
location '/data/dw/dws/one_make/dim_location_province'
;