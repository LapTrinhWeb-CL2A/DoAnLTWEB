package beans;

public class Course {
    int ProID;
    String ProName, TinyDes, FullDes,ProImage,ProDemo,ProVideo;
    int Price, Quantity, CatID;

    public Course() {
    }

    public Course(int proID, String proName,String proImage,String proDemo,String proVideo, String tinyDes, String fullDes, int price, int quantity, int catID) {
        ProID = proID;
        ProName = proName;
        ProImage=proImage;
        ProDemo=proDemo;
        ProVideo=proVideo;
        TinyDes = tinyDes;
        FullDes = fullDes;
        Price = price;
        Quantity = quantity;
        CatID = catID;
    }

    public int getProID() {
        return ProID;
    }

    public void setProID(int proID) {
        ProID = proID;
    }

    public String getProName() {
        return ProName;
    }


    public void setProName(String proName) {
        ProName = proName;
    }

    public String getProImage() {
        return ProImage;
    }

    public void setProImage(String proImage) {
        ProImage = proImage;
    }
    public String getTinyDes() {
        return TinyDes;
    }

    public void setTinyDes(String tinyDes) {
        TinyDes = tinyDes;
    }

    public String getFullDes() {
        return FullDes;
    }

    public void setFullDes(String fullDes) {
        FullDes = fullDes;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int price) {
        Price = price;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int quantity) {
        Quantity = quantity;
    }

    public int getCatID() {
        return CatID;
    }

    public void setCatID(int catID) {
        CatID = catID;
    }

    public String getProDemo() {
        return ProDemo;
    }

    public void setProDemo(String proDemo) {
        ProDemo = proDemo;
    }
    public String getProVideo() {
        return ProVideo;
    }

    public void setProVideo(String proVideo) {
        ProVideo = proVideo;
    }
}
