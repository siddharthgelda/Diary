package com.helper;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Util {
    public static Date getSqlDate(String searchDateStr) throws ParseException {
        SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
        Date parsed = convert(format.parse(searchDateStr));

        return parsed;
    }
    private static java.sql.Date convert(java.util.Date uDate) {

        java.sql.Date sDate = new java.sql.Date(uDate.getTime());



        return sDate;
    }
}
