-- 服务网点维度表
create external table if not exists one_make_dws.dim_srv_station(
    id string comment '服务网点id'
    , name string comment '服务网点名称'
    ,code string comment '网点编号'
    ,province_id string comment '省份id'
    ,province string comment '省份名称'
    ,city_id string comment '城市id'
    ,city string comment '城市'
    ,county_id string comment '县城id'
    ,county string comment '县城'
    ,status string comment '服务网点状态'
    ,status_name string comment '状态中文名'
    ,org_id string comment '所属组织机构id'
    ,org_name string comment '所属组件机构名称'
)comment '服务网点维度表'
partitioned by (dt string)
stored as orc
location '/data/dw/dws/one_make/dim_srv_station'
;