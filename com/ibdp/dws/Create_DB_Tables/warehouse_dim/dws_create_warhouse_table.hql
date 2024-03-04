-- 仓库维度表
create external table if not exists one_make_dws.dim_warehouse(
    code string comment '仓库编码'
    , name string comment '仓库名称'
    , company_id string comment '所属公司'
    , company string comment '公司名称'
    , srv_station_id string comment '所属服务网点ID'
    , srv_station_name string comment '所属服务网点名称'
)
comment '仓库维度表'
partitioned by (dt string)
stored as orc
location '/data/dw/dws/one_make/dim_warehouse'
;