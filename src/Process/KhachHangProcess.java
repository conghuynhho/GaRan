package Process;

import Database.KhachHangDB;
import Model.KhachHang;
import Utils.MyDialog;

import java.util.ArrayList;

public class KhachHangProcess {

    private ArrayList<KhachHang> listKhachHang = null;
    private KhachHangDB khachHangDB = new KhachHangDB();

    public void docDanhSach() {
        this.listKhachHang = khachHangDB.getListKhachHang();
    }

    public ArrayList<KhachHang> getListKhachHang() {
        if (listKhachHang == null)
            docDanhSach();
        return listKhachHang;
    }

    public ArrayList<KhachHang> timKiemKhachHang(String txtMin, String txtMax) {
        if (txtMax.trim().equals("") && txtMin.trim().equals(""))
            return listKhachHang;
        try {
            ArrayList<KhachHang> dskh = new ArrayList<>();
            txtMin = txtMin.replace(",", "");
            txtMax = txtMax.replace(",", "");
            int min = Integer.parseInt(txtMin);
            int max = Integer.parseInt(txtMax);
            for (KhachHang kh : listKhachHang) {
                if (kh.getTongChiTieu() >= min && kh.getTongChiTieu() <= max) {
                    dskh.add(kh);
                }
            }
            return dskh;
        } catch (Exception e) {
            new MyDialog("Hãy nhập giá trị nguyên phù hợp!", MyDialog.ERROR_DIALOG);
        }
        return null;
    }

    public ArrayList<KhachHang> timKiemKhachHang(String tuKhoa) {
        tuKhoa = tuKhoa.toLowerCase();
        ArrayList<KhachHang> dskh = new ArrayList<>();
        for (KhachHang kh : listKhachHang) {
            String ho = kh.getHo().toLowerCase();
            String ten = kh.getTen().toLowerCase();
            String gioiTinh = kh.getGioiTinh().toLowerCase();
            if (ho.contains(tuKhoa) || ten.contains(tuKhoa) || gioiTinh.contains(tuKhoa)) {
                dskh.add(kh);
            }
        }
        return dskh;
    }

    public boolean themKhachHang(String ho, String ten, String gioiTinh) {
        if (ten.trim().equals("")) {
            new MyDialog("Không được để trống tên!", MyDialog.ERROR_DIALOG);
            return false;
        }
        if (gioiTinh.equals("Chọn giới tính")) {
            new MyDialog("Hãy chọn giới tính!", MyDialog.ERROR_DIALOG);
            return false;
        }
        KhachHang kh = new KhachHang();
        kh.setHo(ho);
        kh.setTen(ten);
        kh.setGioiTinh(gioiTinh);
        kh.setTongChiTieu(0);
        boolean flag = khachHangDB.addKhachHang(kh);
        if (flag) {
            new MyDialog("Thêm thành công!", MyDialog.SUCCESS_DIALOG);
        } else {
            new MyDialog("Thêm thất bại!", MyDialog.ERROR_DIALOG);
        }
        return flag;
    }

    public boolean suaKhachHang(String ma, String ho, String ten, String gioiTinh) {
        if (ten.trim().equals("")) {
            new MyDialog("Không được để trống tên!", MyDialog.ERROR_DIALOG);
            return false;
        }
        if (gioiTinh.equals("Chọn giới tính")) {
            new MyDialog("Hãy chọn giới tính!", MyDialog.ERROR_DIALOG);
            return false;
        }
        KhachHang kh = new KhachHang();
        kh.setHo(ho);
        kh.setTen(ten);
        kh.setGioiTinh(gioiTinh);
        boolean flag = khachHangDB.updateKhachHang(Integer.parseInt(ma), kh);
        if (flag) {
            new MyDialog("Sửa thành công!", MyDialog.SUCCESS_DIALOG);
        } else {
            new MyDialog("Sửa thất bại!", MyDialog.ERROR_DIALOG);
        }
        return flag;
    }

    public boolean xoaKhachHang(String ma) {
        boolean flag = false;
        try {
            int maKH = Integer.parseInt(ma);
            MyDialog dlg = new MyDialog("Bạn có chắc chắn muốn xoá?", MyDialog.WARNING_DIALOG);
            if(dlg.getAction() == MyDialog.CANCEL_OPTION)
                return false;
            flag = khachHangDB.deleteKhachHang(maKH);
        } catch (Exception e) {
            new MyDialog("Chưa chọn khách hàng!", MyDialog.ERROR_DIALOG);
        }
        if (flag) {
            new MyDialog("Xoá thành công!", MyDialog.SUCCESS_DIALOG);
        } else {
            new MyDialog("Xoá thất bại!", MyDialog.ERROR_DIALOG);
        }
        return flag;
    }
}
