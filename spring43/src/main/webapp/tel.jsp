<%@page import="java.util.Random"%><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%  
    Random r = new Random();
    int num = r.nextInt(899999) + 100000; //100000~999998
    %><%= num %>