package com.mega.project;

import java.awt.image.BufferedImage;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.imageio.ImageIO;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class crawling {

    public static void main(String[] args) {
        String wtUrl = "http://shop.danawa.com/main/?controller=goods&methods=blog&billingInternalProductSeq=12625265&productRegisterAreaGroupSeq=20&serviceSectionSeq=594#";

        try {
            Document webtoonPage = Jsoup.connect(wtUrl).get();

            //System.out.println(webtoonPage.select(".wt_viewer > img"));

            Elements imgUrl = webtoonPage.select(".pg_item on > img");

            for (int i = 0; i < imgUrl.size(); i++) {
                System.out.println(imgUrl.get(i).attr("src"));
                String src = imgUrl.get(i).attr("src");

                URL url = new URL(src);
                HttpURLConnection conn = (HttpURLConnection)url.openConnection();

                conn.setRequestProperty("Referer", src);
                BufferedImage img = ImageIO.read(conn.getInputStream());

                FileOutputStream out = new FileOutputStream("C:\\Users\\User\\Desktop\\test\\IMAG01_" + (i + 1) + ".jpg");
                ImageIO.write(img, "jpg", out);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}