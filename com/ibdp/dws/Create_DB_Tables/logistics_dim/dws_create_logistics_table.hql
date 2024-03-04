-- 物流维度表(和服务属性表类似)
create external table if not exists one_make_dws.dim_logistics(
    prop_name string comment '字典名称'
    , type_id string comment '属性id'
    , type_name string comment '属性名称'
)
comment '物流维度表'
partitioned by (dt string)
stored as orc
location '/data/dw/dws/one_make/dim_logistics'
;