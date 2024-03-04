-- 服务属性维度
-- 针对服务工单分析的属性维度
create external table if not exists one_make_dws.dim_service_attribute(
    prop_name string comment '字典名称'
    , type_id string comment '属性id'
    , type_name string comment '属性名称'
)
comment '服务属性维度表'
partitioned by (dt string)
stored as orc
location '/data/dw/dws/one_make/dim_service_attribute'
;