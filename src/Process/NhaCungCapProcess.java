package Process;

import Database.NhaCungCapDB;
import Model.NhaCungCap;
import Utils.MyDialog;
import java.util.ArrayList;
import java.util.regex.Pattern;

public class NhaCungCapProcess {

    private NhaCungCapDB nhaCungCapDB = new NhaCungCapDB();
    private ArrayList<NhaCungCap> listNhaCungCap = null;

    public NhaCungCapProcess() {
        docDanhSach();
    }

    public void docDanhSach() {
        this.listNhaCungCap = nhaCungCapDB.getListNhaCungCap();
    }

    public ArrayList<NhaCungCap> getListNhaCungCap() {
        if (this.listNhaCungCap == null) {
            docDanhSach();
        }
        return this.listNhaCungCap;
    }

    public boolean themNhaCungCap(String tenNCC, String diaChi, String dienThoai) {
        if (tenNCC.trim().equals("")) {
            new MyDialog("Hãy nhập tên Nhà cung cấp này!", MyDialog.ERROR_DIALOG);
            return false;
        }
        if (diaChi.trim().equals("")) {
            new MyDialog("Hãy nhập địa chỉ!", MyDialog.ERROR_DIALOG);
            return false;
        }
        Pattern pattern = Pattern.compile("^\\d{10}$");
        if (!pattern.matcher(dienThoai).matches()) {
            new MyDialog("Hãy nhập số điện thoại hợp lệ!", MyDialog.ERROR_DIALOG);
            return false;
        }

        NhaCungCap ncc = new NhaCungCap();
        ncc.setTenNCC(tenNCC);
        ncc.setDiaChi(diaChi);
        ncc.setDienThoai(dienThoai);
        boolean flag = nhaCungCapDB.addNCC(ncc);
        if (flag) {
            new MyDialog("Thêm mới thành công!", MyDialog.SUCCESS_DIALOG);
        } else {
            new MyDialog("Thêm mới thất bại!", MyDialog.ERROR_DIALOG);
        }
        return flag;
    }

    public boolean suaNhaCungCap(String maNCC, String tenNCC, String diaChi, String dienThoai) {
        if (tenNCC.trim().equals("")) {
            new MyDialog("Hãy nhập tên Nhà cung cấp này!", MyDialog.ERROR_DIALOG);
            return false;
        }
        if (diaChi.trim().equals("")) {
            new MyDialog("Hãy nhập địa chỉ!", MyDialog.ERROR_DIALOG);
            return false;
        }
        Pattern pattern = Pattern.compile("^\\d{10}$");
        if (!pattern.matcher(dienThoai).matches()) {
            new MyDialog("Hãy nhập số điện thoại hợp lệ!", MyDialog.ERROR_DIALOG);
            return false;
        }

        int ma = Integer.parseInt(maNCC);

        NhaCungCap ncc = new NhaCungCap();
        ncc.setMaNCC(ma);
        ncc.setTenNCC(tenNCC);
        ncc.setDiaChi(diaChi);
        ncc.setDienThoai(dienThoai);
        
        boolean flag = nhaCungCapDB.updateNCC(ncc);

        if (flag) {
            new MyDialog("Sửa thành công!", MyDialog.SUCCESS_DIALOG);
        } else {
            new MyDialog("Sửa thất bại!", MyDialog.ERROR_DIALOG);
        }
        return flag;
    }

}
