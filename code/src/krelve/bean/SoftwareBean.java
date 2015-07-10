package krelve.bean;

public class SoftwareBean {
	private String name;
	private String url;
	private String pic;
	private String download;
	private String update;
	private String desc;

	public SoftwareBean(String name, String url, String pic, String download,
			String update, String desc) {
		this.name = name;
		this.url = url;
		this.pic = pic;
		this.download = download;
		this.update = update;
		this.desc = desc;
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

	public String getDownload() {
		return download;
	}

	public void setDownload(String download) {
		this.download = download;
	}

	public String getUpdate() {
		return update;
	}

	public void setUpdate(String update) {
		this.update = update;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

}
