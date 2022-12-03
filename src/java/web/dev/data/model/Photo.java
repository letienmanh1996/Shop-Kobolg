package web.dev.data.model;

public class Photo {

    public int id;
    public String name;
    public String url;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Photo(String name, String url) {
        this.name = name;
        this.url = url;
    }

    public Photo(int id, String name, String url) {
        this.id = id;
        this.name = name;
        this.url = url;
    }

}
