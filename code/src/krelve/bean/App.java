package krelve.bean;

public class App {
	private String title;
	private String url;
	private String pic;

	public App(String title, String url, String pic) {
		this.title = title;
		this.url = url;
		this.pic = pic;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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
		return "App [title=" + title + ", url=" + url + ", pic=" + pic + "]";
	}

}
