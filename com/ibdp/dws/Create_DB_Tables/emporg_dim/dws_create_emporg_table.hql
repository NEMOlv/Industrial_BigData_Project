-- 创建组织机构维度表，组织机构人员是经常变动的，所以按照日期分区
create external table if not exists one_make_dws.dim_emporg(
    empid string comment '人员id'
    , empcode string comment '人员编码(erp对应的账号id)'
    , empname string comment '人员姓名'
    , userid string comment '用户系统id（登录用户名）'
    , posid string comment '岗位id'
    , posicode string comment '岗位编码'
    , posiname string comment '岗位名称'
    , orgid string comment '部门id'
    , orgcode string comment '部门编码'
    , orgname string comment '部门名称'
) comment '组织机构维度表'
partitioned by (dt string)
stored as orc
location '/data/dw/dws/one_make/dim_emporg'
;