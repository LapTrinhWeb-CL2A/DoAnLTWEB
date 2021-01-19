package beans;

public class Document {
    int CatID;
    String CatName;
    String CatDemo;
    public Document()
    {

    }
    public Document(int catID,String catName,String catDemo)
    {
        CatID=catID;
        CatName=catName;
        CatDemo=catDemo;

    }
    public int getCatID() {
        return CatID;
    }

    public String getCatName() {
        return CatName;
    }

    public void setCatID(int catID) {
        CatID = catID;
    }

    public void setCatName(String catName) {
        CatName = catName;
    }

    public String getCatDemo() {
        return CatDemo;
    }

    public void setCatDemo(String catDemo) {
        CatDemo = catDemo;
    }
    @Override
    public String toString() {
        return "Category{" +
                "CatID=" + CatID +
                ", CatName='" + CatName + '\'' +
                '}';
    }
}
