-- 油站维度(包含客户信息、地理区域信息、数据字典)
create external table if not exists one_make_dws.dim_oilstation
(
    id                     string comment '油站ID',
    name                   string comment '油站名称',
    code                   string comment '油站编码',
    customer_id            string comment '客户ID',
    customer_name          string comment '客户名称',
    province_id            int comment '省份id',
    province_name          string comment '省份名称',
    city_id                int comment '城市id',
    city_name              string comment '城市名称',
    county_id              int comment '县城ID',
    county_name            string comment '县城名称',
    area_id                int comment '区域id',
    area_name              string comment '区域名称',
    customer_classify_id   string comment '客户分类ID',
    customer_classify_name string comment '客户分类名称',
    status                 int comment '油站状态（1、2）',
    status_name            string comment '油站状态名（正常、停用）',
    company_id             int comment '所属公司ID',
    company_name           string comment '所属公司名称',
    customer_province_id   int comment '客户所属省份ID',
    customer_province_name string comment '客户所属省份'
) COMMENT '油站维度表'
    PARTITIONED BY (dt STRING)
    STORED AS TEXTFILE
    LOCATION '/data/dw/dws/one_make/dim_oilstation'
;
