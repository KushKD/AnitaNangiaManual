package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.PostsDao;
import Model.Posts;

@Controller
public class HomeController {

	@Autowired
	private PostsDao postsDao;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getHome(Model mv) {

		try {

			List<Posts> postslist = postsDao.getPosts();
			mv.addAttribute("posts", postslist);

		} catch (DataAccessException ex) {
			System.out.println(ex.getLocalizedMessage());
			System.out.println(ex.getRootCause());
			System.out.println(ex.getClass());
		}

		return "index";
	}

}
