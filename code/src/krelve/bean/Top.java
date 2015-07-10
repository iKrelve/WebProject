package krelve.bean;

public class Top {
	private int id;
	private String name;
	private String url;
	private String pic;

	public Top(int id, String name, String url, String pic) {
		this.id = id;
		this.name = name;
		this.url = url;
		this.pic = pic;
	}

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

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	@Override
	public String toString() {
		return "Top [id=" + id + ", name=" + name + ", url=" + url + ", pic="
				+ pic + "]";
	}

}
