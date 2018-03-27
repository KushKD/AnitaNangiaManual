package Model;

import java.io.Serializable;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

public class Posts implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6380745096151395844L;
	
	
	private int id;
	
	@NotNull(message="Title Name cannot be empty")
	@Size(min=5,message="Please enter valid Title name. Minimum length of name is 5 characters")
	private String title;
	private String content;
	
	@NotNull(message="Category of the Post cannot be empty")
	@Size(min=4,message="Please enter valid Category name. Category can be M.Ed or B.Ed")
	private String category;
	private String contentBig;
	
	@NotNull(message="HashTag cannot be empty")
	@Size(min=1,message="It is better to add the HashTag regarding the Post. Hashtag must be atleat 1 character long ")
	private String hashtag;
	private String entryDate;
	private String month;
	private String year;
	private String author;
	
	@NotNull(message="You need to specify the Estimated Reading Time of the Article")
	@Size(min=0,message="It gives a clear picture to the readers on how much Time it takes to complete the article")
	private String estimatereadingtime;
	private String pdfname;
	
	@NotNull(message="Please attach the file in context to the Post")
	private MultipartFile pdfFile;
	
	
	
	
	public MultipartFile getPdfFile() {
		return pdfFile;
	}
	public void setPdfFile(MultipartFile pdfFile) {
		this.pdfFile = pdfFile;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getHashtag() {
		return hashtag;
	}
	public void setHashtag(String hashtag) {
		this.hashtag = hashtag;
	}
	public String getEntryDate() {
		return entryDate;
	}
	public void setEntryDate(String entryDate) {
		this.entryDate = entryDate;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	
	public String getEstimatereadingtime() {
		return estimatereadingtime;
	}
	public void setEstimatereadingtime(String estimatereadingtime) {
		this.estimatereadingtime = estimatereadingtime;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getContentBig() {
		return contentBig;
	}
	public void setContentBig(String contentBig) {
		this.contentBig = contentBig;
	}
	public String getPdfname() {
		return pdfname;
	}
	public void setPdfname(String pdfname) {
		this.pdfname = pdfname;
	}
	@Override
	public String toString() {
		return "Posts [id=" + id + ", title=" + title + ", content=" + content + ", category=" + category
				+ ", contentBig=" + contentBig + ", hashtag=" + hashtag + ", entryDate=" + entryDate + ", month="
				+ month + ", year=" + year + ", author=" + author + ", estimatereadingtime=" + estimatereadingtime
				+ ", pdfname=" + pdfname + ", pdfFile=" + pdfFile + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
