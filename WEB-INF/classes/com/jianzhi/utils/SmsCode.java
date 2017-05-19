package com.jianzhi.utils;

import org.junit.Test;

import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

public class SmsCode {
     
	public static void name(String code, String phoneNumber) {
		String serverUrl = "http://gw.api.taobao.com/router/rest";
		String accessKeyId = "23357590";

		String accessKeySecret = "e0a93486087c2d9fdffc09de357e87de";
		// TODO Auto-generated method stub
		TaobaoClient clinet = new DefaultTaobaoClient(serverUrl, accessKeyId, accessKeySecret);
		AlibabaAliqinFcSmsNumSendRequest request = new AlibabaAliqinFcSmsNumSendRequest();
		request.setSmsType("normal");
		request.setSmsFreeSignName("王123qwe");
		// " 要转移
		String json = "{\"name\":\"" + code + "\"}";

		request.setSmsParam(json);
		request.setRecNum(phoneNumber);
		// request.setSmsTemplateCode("SMS_12915765");
		request.setSmsTemplateCode("SMS_12910884");

		AlibabaAliqinFcSmsNumSendResponse response = null;
		try {
			response = clinet.execute(request);
		} catch (ApiException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String err_code = response.getErrorCode();
		System.out.println(response.isSuccess());
		System.out.println("测试" + err_code);
		/*
		 * String str = response.getBody(); JSONReader jsonReader = new
		 * JSONValidatingReader(); // Code code = (Code) jsonReader.read(str);
		 * Gson gson = new Gson(); Alibaba_aliqin_fc_sms_num_send_response code
		 * = gson.fromJson(str, Alibaba_aliqin_fc_sms_num_send_response.class);
		 * Result result = code.getResult();
		 */

		// System.out.println(code.getResult().err_code);
		/*
		 * System.out.println(code.getResult().model);
		 * System.out.println(code.getResult().success);
		 */
		System.out.println(response.getBody());
	}

	public static char[] generateRandomArray(int num) {
		String chars = "0123456789";
		char[] rands = new char[num];
		for (int i = 0; i < num; i++) {
			int rand = (int) (Math.random() * 10);
			rands[i] = chars.charAt(rand);
		}
		return rands;
	}

	public String name1(String phoneNumber) {
		// System.out.println(generateRandomArray(6));
		char[] rand = new char[6];
		rand = generateRandomArray(6);
		System.out.println(rand);
		String code = new String(rand);
		name(code, phoneNumber);
		System.out.println(code);
		int as = Integer.parseInt(code);
		System.out.println(as);
		String stre3 = "111111";
		String json = "{\"name\":\"" + stre3 + "\"}";
		System.out.println(json);
		return code;

	}

   // @Test
	public void name() {
		String stre3 = "111111";
		String json = "{\"name\":\"" + stre3 + "\"}";
		name("123456","13505287103");
		System.out.println(json);
	}

}
