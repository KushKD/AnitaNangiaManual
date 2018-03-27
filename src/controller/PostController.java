package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import dao.OfferDao;
import dao.PostsDao;
import Helpers.HelperClass;
import Model.Posts;

@Controller
public class PostController {

	@Autowired
	private PostsDao postsDao;

	@Autowired
	ServletContext context;

	@RequestMapping(value = "/createpost", method = RequestMethod.GET)
	public String CreatePost(Model mv) {
		mv.addAttribute("posts", new Posts());
		return "createpost";
	}

	@RequestMapping(value = "/submitpost", method = RequestMethod.POST)
	public String SubmitPost(Model mv, @Valid Posts post, BindingResult rs) {
		boolean flag = false;
		try {

			if (rs.hasErrors()) {
				return "createpost";
			} else {

				post.setEntryDate(HelperClass.GetDateToday());
				post.setMonth(HelperClass.GetMonthToday());
				post.setYear(HelperClass.GetYearToday());
				Posts x = uploadFile(post);
				flag = postsDao.insertPost(x);
				if (flag) {
					return "submitpost";
				} else {
					return "createpost";
				}
			}
		} catch (DataAccessException ex) {
			System.out.println(ex.getLocalizedMessage());
			System.out.println(ex.getRootCause());
			System.out.println(ex.getClass());
			rs.rejectValue("title", ex.getLocalizedMessage());
			return "createpost";
		} catch (IOException e) {
			System.out.println(e.getLocalizedMessage());
			System.out.println(e.getClass());
			rs.rejectValue("title", e.getLocalizedMessage());
			return "createpost";
		}

	}

	private Posts uploadFile(Posts post) throws IOException {

		MultipartFile multipartFile = post.getPdfFile();
		String uploadPath = context.getRealPath("/resources/documents/pdf");
		System.out.println(uploadPath);
		/// AnitaNangia/WebContent/resources/documents/pdf
		FileCopyUtils.copy(post.getPdfFile().getBytes(),
				new File(uploadPath + "/" + post.getPdfFile().getOriginalFilename()));
		System.out.println(uploadPath + "/" + post.getPdfFile().getOriginalFilename());
		String fileName = multipartFile.getOriginalFilename();
		post.setPdfname(fileName);

		return post;
	}

	@RequestMapping(value = "/getpostdetails", method = RequestMethod.GET)
	public String postDetails(Model mv, @RequestParam("id") String id) {

		try {

			List<Posts> postdetails = postsDao.getPostswithID(id);
			mv.addAttribute("posts", postdetails);

		} catch (DataAccessException ex) {
			System.out.println(ex.getLocalizedMessage());
			System.out.println(ex.getRootCause());
			System.out.println(ex.getClass());
		}

		return "getpostdetails";

	}

	@RequestMapping(value = "/med", method = RequestMethod.GET)
	public String getMeDPost(Model mv) {

		try {

			List<Posts> postdetails = postsDao.getPostsMed();
			mv.addAttribute("posts", postdetails);

		} catch (DataAccessException ex) {
			System.out.println(ex.getLocalizedMessage());
			System.out.println(ex.getRootCause());
			System.out.println(ex.getClass());
		}

		return "index";

	}
	
	//bed
	@RequestMapping(value = "/bed", method = RequestMethod.GET)
	public String getBeDPost(Model mv) {

		try {

			List<Posts> postdetails = postsDao.getPostsBed();
			mv.addAttribute("posts", postdetails);

		} catch (DataAccessException ex) {
			System.out.println(ex.getLocalizedMessage());
			System.out.println(ex.getRootCause());
			System.out.println(ex.getClass());
		}

		return "index";

	}

}
