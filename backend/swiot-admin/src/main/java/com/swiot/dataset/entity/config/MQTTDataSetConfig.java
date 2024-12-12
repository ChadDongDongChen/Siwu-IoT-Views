package com.swiot.dataset.entity.config;

import com.gccloud.dataset.entity.config.BaseDataSetConfig;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;
import java.util.Map;

@Data
public class MQTTDataSetConfig extends BaseDataSetConfig {

    @ApiModelProperty(value = "请求地址")
    private String url;

    @ApiModelProperty(value = "用户名")
    private String username;

    @ApiModelProperty(value = "密码")
    private String password;

    @ApiModelProperty(value = "主题")
    private String topic;

    @ApiModelProperty(value = "请求类型")
    private String datasetType;

    @ApiModelProperty(value = "请求方式 前端 后端")
    private String requestType;

    @ApiModelProperty(value = "结果")
    private String data;

    @ApiModelProperty(value = "响应脚本")
    private String responseScript;
}
