package com.mega.project;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class 크롤링기본 {
//크롤링할 떄 title과 inform은 대응 완료, price는 1개밖에 없음.
	public static void main(String[] args) throws Exception {
		Connection con = Jsoup.connect("http://shop.danawa.com/main/?controller=goods&methods=blog&billingInternalProductSeq=9276801&productRegisterAreaGroupSeq=20&serviceSectionSeq=596");
		Document doc = con.get();

		Elements title = doc.select("th.s_tit");
		Elements inform = doc.select("td.s_info");
		Elements price = doc.select("span.prod_price");
		Elements img = doc.select("img");
		
		for (int i = 0; i < 9; i++) {
			System.out.println(title.get(i).text() + " : " + inform.get(i).text());
			
		}
		
		for (int i = 0; i < price.size(); i++) {
			System.out.println(price.get(i).text());
			
		}
		
		for (int i = 0; i < img.size(); i++) {
			System.out.println(img.get(i).attr("src"));
			
		}
		
	}
}
