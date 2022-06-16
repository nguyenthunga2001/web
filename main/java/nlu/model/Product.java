package nlu.model;

public class Product {
	private String id;
	private String productName;
	private int price;
	private String category;
	private String image;
	private String description;

	public Product() {

	}



	public Product(String id, String productName, int price, String category, String image, String description) {
		this.id = id;
		this.productName = productName;
		this.price = price;
		this.category = category;
		this.image = image;
		this.description = description;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getProductName() {
		return productName;
	}



	public void setProductName(String productName) {
		this.productName = productName;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	public String getCategory() {
		return category;
	}



	public void setCategory(String category) {
		this.category = category;
	}



	public String getImage() {
		return image;
	}



	public void setImage(String image) {
		this.image = image;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	@Override
	public String toString() {
		return "Product [id=" + id + ", productName=" + productName + ", price=" + price + ", category=" + category
				+ ", image=" + image + ", description=" + description + "]";
	}
	
	

	
	
}
