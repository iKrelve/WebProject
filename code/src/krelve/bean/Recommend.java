package krelve.bean;

public class Recommend {
	private String name;
	private String url;
	private String pic;
	private String star;
	private String click;
	private String weight;
	private String desc;
	private String type;

	public Recommend(String name, String url, String pic, String star,
			String click, String weight, String desc, String type) {
		this.name = name;
		this.url = url;
		this.pic = pic;
		this.star = star;
		this.click = click;
		this.weight = weight;
		this.desc = desc;
		this.type = type;
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

	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}

	public String getClick() {
		return click;
	}

	public void setClick(String click) {
		this.click = click;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Recommend [name=" + name + ", url=" + url + ", pic=" + pic
				+ ", star=" + star + ", click=" + click + ", weight=" + weight
				+ ", desc=" + desc + ", type=" + type + "]";
	}

}
