package Process;

import Database.CTPhieuNhapDB;
import Model.CTPhieuNhap;
import java.util.ArrayList;

public class CTPhieuNhapProcess {

    private ArrayList<CTPhieuNhap> listPhieuNhap = null;
    private CTPhieuNhapDB ctPhieuNhapDB = new CTPhieuNhapDB();

    public CTPhieuNhapProcess() {
        docDanhSach();
    }

    public void docDanhSach() {
        this.listPhieuNhap = ctPhieuNhapDB.getListCTPhieuNhap();
    }

    public ArrayList<CTPhieuNhap> getListPhieuNhap() {
        if (listPhieuNhap == null) {
            docDanhSach();
        }
        return listPhieuNhap;
    }
    
    public ArrayList<CTPhieuNhap> getListPhieuNhap(String maPN) {
        ArrayList<CTPhieuNhap> dsct = new ArrayList<>();
        int ma = Integer.parseInt(maPN);
        
        for(CTPhieuNhap ct: listPhieuNhap) {
            if(ct.getMaPN() == ma) {
                dsct.add(ct);
            }
        }
        
        return dsct;
    }

    public boolean luuCTPhieuNhap(CTPhieuNhap ctpn) {
        return ctPhieuNhapDB.addCTPhieuNhap(ctpn);
    }
}
