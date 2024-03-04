-- 故障分类维度表（4级粒度）
create external table if not exists one_make_dws.dim_fault_catalog(
      lv4_id string comment '4级故障ID'
    , lv4_code string comment '4级故障编码'
    , lv4_name string comment '4级故障名称'
    , lv3_id string comment '3级故障ID'
    , lv3_code string comment '3级故障编码'
    , lv3_name string comment '3级故障名称'
    , lv2_id string comment '2级故障ID'
    , lv2_code string comment '2级故障编码'
    , lv2_name string comment '2级故障名称'
    , lv1_id string comment '1级故障ID'
    , lv1_code string comment '1级故障编码'
    , lv1_name string comment '1级故障名称'
)
comment '故障维度表（4级粒度）'
partitioned by (dt string)
stored as orc
location '/data/dw/dws/one_make/dim_fault_catalog'
;