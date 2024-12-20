package com.swiot.permission.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("big_screen_share")
public class BigScreenShare implements Serializable {
    private Long id;  // 自增主键
    private String code;  //  页面编码
    private String user;  // 允许访问列表
    private String createBy;  // 创建人
    private String createDate;  // 创建时间
    private String updateBy;  // 更新人
    private String updateDate;  // 更新时间
    private String remark;  // 备注
    private Integer delFlag;  // 删除标识符
}
