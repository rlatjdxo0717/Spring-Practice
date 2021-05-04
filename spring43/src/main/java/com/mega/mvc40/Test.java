package com.mega.mvc40;

import java.io.IOException;

import com.google.code.geocoder.Geocoder;
import com.google.code.geocoder.GeocoderRequestBuilder;
import com.google.code.geocoder.model.GeocodeResponse;
import com.google.code.geocoder.model.GeocoderRequest;
import com.google.code.geocoder.model.GeocoderResult;
import com.google.code.geocoder.model.GeocoderStatus;
import com.google.code.geocoder.model.LatLng;

public class Test {
	
	
	 public static void main(String[] args) {
	      String location = "대전광역시 유성구 궁동";
	      System.out.println(location);
	      Float[] coords = geoCoding(location);
	      System.out.println(coords);
	      //System.out.println(location + ": " + coords[0] + ", " + coords[1]);
	   }
   public static Float[] geoCoding(String location) {
      System.out.println("내부 "+location);
      if (location == null)
          return null;

        Geocoder geocoder = new Geocoder();
        // setAddress : 변환하려는 주소 (경기도 성남시 분당구 등)
        // setLanguate : 인코딩 설정
        GeocoderRequest geocoderRequest = new GeocoderRequestBuilder().setAddress(location).setLanguage("ko").getGeocoderRequest();

        try {
          GeocodeResponse geocoderResponse = geocoder.geocode(geocoderRequest);
          System.out.println("-----------------" + geocoderResponse.getStatus());
          if (geocoderResponse.getStatus() == GeocoderStatus.OK & !geocoderResponse.getResults().isEmpty()) {
            GeocoderResult geocoderResult=geocoderResponse.getResults().iterator().next();
            LatLng latitudeLongitude = geocoderResult.getGeometry().getLocation();

            Float[] coords = new Float[2];
            coords[0] = latitudeLongitude.getLat().floatValue();
            coords[1] = latitudeLongitude.getLng().floatValue();
            return coords;
          }
        } catch (IOException ex) {
          ex.printStackTrace();
        }
        return null;
      }
  
}