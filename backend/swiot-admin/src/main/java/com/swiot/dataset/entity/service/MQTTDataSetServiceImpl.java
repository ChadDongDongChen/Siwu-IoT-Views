package com.swiot.dataset.entity.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gccloud.common.utils.JSON;
import com.gccloud.dataset.dao.DatasetDao;
import com.gccloud.dataset.dto.DatasetParamDTO;
import com.gccloud.dataset.dto.TestExecuteDTO;
import com.gccloud.dataset.entity.DatasetEntity;
import com.gccloud.dataset.entity.config.HttpDataSetConfig;
import com.gccloud.dataset.service.IBaseDataSetService;
import com.gccloud.dataset.vo.DataVO;
import com.google.common.collect.Lists;
import com.swiot.dataset.entity.config.MQTTDataSetConfig;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Slf4j
@Service("mqtt")
public class MQTTDataSetServiceImpl extends ServiceImpl<DatasetDao, DatasetEntity> implements IBaseDataSetService {

    @Override
    public Object execute(String id, List<DatasetParamDTO> paramList) {
        List<DatasetParamDTO> finalParamList = Lists.newArrayList(paramList);
        System.out.println("ID===>");
        DatasetEntity entity = this.getByIdFromCache(id);
        //MQTTDataSetConfig config = (MQTTDataSetConfig)entity.getConfig();
        //MQTTDataSetConfig configCopy = (MQTTDataSetConfig)JSON.parseObject(JSON.toJSONString(config), MQTTDataSetConfig.class);
        System.out.println("Production======>"+paramList);
        System.out.println("finalParamList======>"+finalParamList);
        System.out.println("entity======>"+entity.getConfig());
        MQTTDataSetConfig mqttDataSetConfig = (MQTTDataSetConfig) entity.getConfig();

        mqttDataSetConfig.setData("该方法是数据集执行方法，按照实际需求实现5");
        mqttDataSetConfig.setDatasetType("mqtt");
        mqttDataSetConfig.setRequestType("frontend");
        System.out.println(mqttDataSetConfig);
        return mqttDataSetConfig;
    }

    @Override
    public DataVO execute(TestExecuteDTO executeDTO) {
        // 该方法是数据集测试是执行的方法，按照实际需求实现
        System.out.println("TEST======>");
        return null;
    }
    public static String getValueByName(List<DatasetParamDTO> paramList, String targetName) {
        return paramList.stream()
                .filter(item -> targetName.equals(item.getName()))
                .map(DatasetParamDTO::getValue)
                .findFirst()
                .orElse(null); // 这里可以根据具体需求修改默认返回值，比如返回空字符串 "" 等
    }
}