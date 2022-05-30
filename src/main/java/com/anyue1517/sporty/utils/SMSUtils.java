package com.anyue1517.sporty.utils;

import com.github.qcloudsms.SmsSingleSender;
import com.github.qcloudsms.SmsSingleSenderResult;
import com.github.qcloudsms.httpclient.HTTPException;
import org.json.JSONException;

import java.io.IOException;

/**
 * 短信发送工具类
 */
public class SMSUtils {

    public static void sendMessage(String phoneNumber, String code, int min) {

        int appid = 1400676997;
        String appkey = "403b4b6724079b9696d331fbb49e0d1e";
        int templateId = 1396770;
        String smsSign = "徐卓龙个人公众号";

        try {
            //发送的短信里面的两个参数
            String[] parms = {code, Integer.toString(min)};
            SmsSingleSender ssender = new SmsSingleSender(appid, appkey);
            SmsSingleSenderResult result = ssender.sendWithParam("86", phoneNumber,
                    templateId, parms, smsSign, "", "");
            System.out.println(result);
        } catch (HTTPException e) {
            e.printStackTrace();
        } catch (JSONException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

}
