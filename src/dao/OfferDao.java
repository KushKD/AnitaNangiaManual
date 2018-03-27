package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import Model.OfferModel;

@Component(value="offerDao")
public class OfferDao {
	
	
	private NamedParameterJdbcTemplate jdbc;
	
	

	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
	
	
	public List<OfferModel> getOffers (){
		
		
		return jdbc.query("SELECT * FROM offers", new RowMapper<OfferModel>() {

			@Override
			public OfferModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				OfferModel  offer = new OfferModel();
				offer.setId(rs.getInt("id"));
				offer.setName(rs.getString("name"));
				offer.setEmail(rs.getString("email"));
				offer.setText(rs.getString("text"));
				
				return offer;
			}
		});
	}
	
	
	

}
