package com.scheduler;

import com.entity.UserDetail;
import com.helper.EmailHelper;
import com.helper.Util;
import com.repository.UserDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

@Service
public class DataScheduler {
    @Autowired
    EmailHelper emailHelper;
    @Autowired
    private UserDetailRepository caseRepository;
    @Async
    public void dataBackup() throws ParseException {
        System.out.println("======================BackUp start================================");
        java.util.Date todayDate = Util.getDate("01/01/1991");
        System.out.println(todayDate.toString());
        List<UserDetail> list = caseRepository.findByNextDateGt(todayDate);
        String mailData = Util.createExcelSheet(list);
        emailHelper.sendCaseListEmail(mailData);
        System.out.println("======================BackUp Done================================");
    }
    @Async
    public void dbBackup()
    {
        System.out.println("Backup Started at " + new Date());

        Date backupDate = new Date();
        SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
        String backupDateStr = format.format(backupDate);
        String dbNameList = "diaryphasetwo";

        String fileName = "Daily_DB_Backup"; // default file name
        String folderPath = "C:\\home";
        File f1 = new File(folderPath);
        f1.mkdir(); // create folder if not exist

        String saveFileName = fileName + "_" + backupDateStr + ".sql";
        String savePath = folderPath + File.separator + saveFileName;

        String executeCmd = "mysqldump -u " + "root" + " -p" + "" + "  --databases " + dbNameList
                + " -r " + savePath;
        System.out.println(executeCmd);
        Process runtimeProcess = null;
        try {
            runtimeProcess = Runtime.getRuntime().exec(new String[] { "cmd.exe", "/c", executeCmd });
            } catch (IOException e) {
            e.printStackTrace();
        }
        int processComplete = 0;
        try {

            boolean b = runtimeProcess.waitFor(30, TimeUnit.SECONDS);
            System.out.println("=================="+b+"===================");
          } catch (InterruptedException e) {
            e.printStackTrace();
        }

        if (processComplete == 0) {
            System.out.println("=================Backup Complete at " + new Date()+"===================");
        } else {
            System.out.println("=================Backup Failure======================");
        }

    }
}
