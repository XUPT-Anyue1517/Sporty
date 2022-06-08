package com.anyue1517.sporty.common;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * 自定义的元数据处理器
 */

@Slf4j
@Component
public class MyMetaObjectHandler implements MetaObjectHandler {


    /**
     * 插入操作自动填充
     * @param metaObject
     */
    @Override
    public void insertFill(MetaObject metaObject) {
        log.info("公共字段自动填充[insert]....");
        log.info(metaObject.toString());


        metaObject.setValue("createTime", LocalDateTime.now());
        //metaObject.setValue("createUser", com.sun.prism.impl.BaseContext.getCurrentId());
        metaObject.setValue("updateTime", LocalDateTime.now());
        //metaObject.setValue("updateUser", com.sun.prism.impl.BaseContext.getCurrentId());
        //metaObject.setValue("payTime", LocalDateTime.now());

    }

    /**
     * 更新操作自动填充
     * @param metaObject
     */
    @Override
    public void updateFill(MetaObject metaObject) {
        log.info("公共字段自动填充[update]....");
        log.info(metaObject.toString());

        //Long id = Thread.currentThread().getId();
        //log.info("线程ID为：{}",id);

        metaObject.setValue("updateTime", LocalDateTime.now());
        //metaObject.setValue("updateUser", BaseContext.getCurrentId());


    }
}
