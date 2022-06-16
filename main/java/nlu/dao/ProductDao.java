package nlu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import nlu.model.Product;

public class ProductDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public ProductDao(Connection con) {
		this.con = con;
	}
	
	public List<Product> getAllProduct(){
		List<Product> product = new ArrayList<Product>();
		
		try {
			query="SELECT * FROM PRODUCT;";
			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while(rs.next()) {
				Product item = new Product();
				item.setId(rs.getString("id"));
				item.setProductName(rs.getString("productName"));
				item.setCategory(rs.getString("category"));
				item.setPrice(rs.getInt("price"));
				item.setImage(rs.getString("image"));
				item.setDescription(rs.getString("description"));
				
				product.add(item);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return product;
	}
}
