package com.helper;

import com.Constants;
import com.entity.UserDetail;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

public class Util {
    public static Date getSqlDate(String searchDateStr) throws ParseException {
        SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
        Date parsed = convert(format.parse(searchDateStr));

        return parsed;
    }
    public static java.util.Date getDate(String searchDateStr) throws ParseException {
        SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
        return format.parse(searchDateStr);
            }

    public static java.util.Date getDate(String searchDateStr,String formate) throws ParseException {
        SimpleDateFormat format = new SimpleDateFormat(formate);
        return format.parse(searchDateStr);
    }
    public  static java.sql.Date convert(java.util.Date uDate) {

        java.sql.Date sDate = new java.sql.Date(uDate.getTime());


        return sDate;
    }

    public static String createExcelSheet(List<UserDetail> list) {
        StringBuffer data = new StringBuffer();
        data.append(Constants.CASE_LIST_HEADERS);
        list.stream().forEach(caseData -> {
            data.append(System.lineSeparator());
            data.append(caseData.getFileNo());
            data.append(Constants.COMMOA);
            data.append(caseData.getCaseNo());
            data.append(Constants.COMMOA);
            data.append(caseData.getAgainstClient());
            data.append(Constants.COMMOA);
            data.append(caseData.getStage());
            data.append(Constants.COMMOA);
            data.append(caseData.getDescripation());
            data.append(Constants.COMMOA);
            data.append(caseData.getAdvocate());
            data.append(Constants.COMMOA);
            data.append(caseData.getPrevDate().toString());
            data.append(Constants.COMMOA);
            data.append(caseData.getCourt().getName());
            data.append(Constants.COMMOA);
            data.append(caseData.getCompany().getName());
            data.append(Constants.COMMOA);
            data.append(caseData.getCity().getName());
            data.append(Constants.COMMOA);
            data.append(" ");

        });
        return data.toString();
    }
}
