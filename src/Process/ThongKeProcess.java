/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Process;

import Database.ThongKeDB;
import Model.ThongKe;

import java.util.ArrayList;

/**
 * @author User
 */
public class ThongKeProcess {

    public ThongKeDB thongKeDB = new ThongKeDB();
    private ArrayList<Double> doanhThuThang;

    public ThongKe thongKe(int nam) {
        return thongKeDB.getThongKe(nam);
    }

    public double getDoanhThuThang(int thang, int nam) {
        return thongKeDB.getDoanhThuThang(thang, nam);
    }
}
