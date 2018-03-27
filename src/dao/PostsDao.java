package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import Model.Posts;

@Component(value="postsDao")
public class PostsDao {

	
private NamedParameterJdbcTemplate jdbc;
	
	

	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
	
	
	public List<Posts> getPosts (){
		
		
		return jdbc.query("SELECT * FROM posts ORDER BY id DESC", new RowMapper<Posts>() {

			@Override
			public Posts mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Posts  post = new Posts();
				post.setId(rs.getInt("id"));
				post.setTitle(rs.getString("title"));
				post.setContent(rs.getString("content"));
				post.setContentBig(rs.getString("contentBig"));
				post.setCategory(rs.getString("category"));
				post.setHashtag(rs.getString("hashtag"));
				post.setEntryDate(rs.getString("entryDate"));
				post.setMonth(rs.getString("month"));
				post.setYear(rs.getString("year"));
				post.setAuthor(rs.getString("author"));
				post.setEstimatereadingtime(rs.getString("estimatereadingtime"));
				post.setPdfname(rs.getString("pdfname"));
				
				return post;
			}
		});
	}
	
	
	
	public Boolean insertPost(Posts posts){
		
		MapSqlParameterSource params  = new MapSqlParameterSource();
		params.addValue("title", posts.getTitle());
		params.addValue("category", posts.getCategory());
		params.addValue("contentBig", "#");
		params.addValue("content", "#");
		params.addValue("hashtag", posts.getHashtag());
		params.addValue("entryDate", posts.getEntryDate());
		params.addValue("month", posts.getMonth());
		params.addValue("year", posts.getYear());
		params.addValue("author", "Dr.Anita Nangia");
		params.addValue("pdfname", posts.getPdfname());
		params.addValue("estimatereadingtime", posts.getEstimatereadingtime()+"min");
		
		return jdbc.update("INSERT INTO posts (title,category,content,contentBig,hashtag,entrydate,month,year,author,estimatereadingtime,pdfname) VALUES (:title, :category, :content, :contentBig ,:hashtag, :entryDate, :month,:year,:author, :estimatereadingtime ,:pdfname)", params) == 1;
	}
	
	public List<Posts> getPostswithID(String id){
		
		MapSqlParameterSource params  = new MapSqlParameterSource();
		params.addValue("id", Integer.parseInt(id));
		
		return jdbc.query("SELECT * FROM posts WHERE id = :id",params, new RowMapper<Posts>() {

			@Override
			public Posts mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Posts  post = new Posts();
				post.setId(rs.getInt("id"));
				post.setTitle(rs.getString("title"));
				post.setContent(rs.getString("content"));
				post.setCategory(rs.getString("category"));
				post.setContentBig(rs.getString("contentBig"));
				post.setHashtag(rs.getString("hashtag"));
				post.setEntryDate(rs.getString("entryDate"));
				post.setMonth(rs.getString("month"));
				post.setYear(rs.getString("year"));
				post.setAuthor(rs.getString("author"));
				post.setEstimatereadingtime(rs.getString("estimatereadingtime"));
				post.setPdfname(rs.getString("pdfname"));
				System.out.println("GETTING POST FROM DATABASE=====>" + post);
				return post;
			}
		});
		
	}
	
	
	public List<Posts> getPostsMed(){
		
		return jdbc.query("SELECT * FROM posts where category ~* 'M.Ed'", new RowMapper<Posts>() {

			@Override
			public Posts mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Posts  post = new Posts();
				post.setId(rs.getInt("id"));
				post.setTitle(rs.getString("title"));
				post.setContent(rs.getString("content"));
				post.setContentBig(rs.getString("contentBig"));
				post.setCategory(rs.getString("category"));
				post.setHashtag(rs.getString("hashtag"));
				post.setEntryDate(rs.getString("entryDate"));
				post.setMonth(rs.getString("month"));
				post.setYear(rs.getString("year"));
				post.setAuthor(rs.getString("author"));
				post.setEstimatereadingtime(rs.getString("estimatereadingtime"));
				post.setPdfname(rs.getString("pdfname"));
				
				return post;
			}
		});
		
	}
	
public List<Posts> getPostsBed(){
		
		return jdbc.query("SELECT * FROM posts where category ~* 'B.Ed'", new RowMapper<Posts>() {

			@Override
			public Posts mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Posts  post = new Posts();
				post.setId(rs.getInt("id"));
				post.setTitle(rs.getString("title"));
				post.setContent(rs.getString("content"));
				post.setContentBig(rs.getString("contentBig"));
				post.setCategory(rs.getString("category"));
				post.setHashtag(rs.getString("hashtag"));
				post.setEntryDate(rs.getString("entryDate"));
				post.setMonth(rs.getString("month"));
				post.setYear(rs.getString("year"));
				post.setAuthor(rs.getString("author"));
				post.setEstimatereadingtime(rs.getString("estimatereadingtime"));
				post.setPdfname(rs.getString("pdfname"));
				
				return post;
			}
		});
		
	}
	
}
