package com.jianzhi.control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.jianzhi.entity.Comment;
import com.jianzhi.service.CommentServiceImpl;

@Controller
public class CommentControl {
	@Resource
	CommentServiceImpl commentServiceImpl;
	@Resource
	List<Comment> comments;
	@Resource
	Comment inComment;

	@Resource
	Gson gson;

	@RequestMapping("comment")
	public void insertComment(@RequestBody Comment comment) {
		commentServiceImpl.insertComment(comment);
	}

	@RequestMapping("comments")
	@ResponseBody
	public List<Comment> getcomments(@RequestParam Integer oid) {
		comments = commentServiceImpl.getCommentsByoid(oid);
		return comments;

	}

	@RequestMapping("commentsUpdate")
	@ResponseBody
	public List<Comment> getCommentUpdate(@RequestParam Integer oid, @RequestParam Integer currentIndex) {
		Map<String, Object> paras = new HashMap<>();
		paras.put("oid", oid);
		paras.put("currentIndex", currentIndex);
		comments = commentServiceImpl.getCommentUpdate(paras);
		return comments;

	}

	@RequestMapping("getBusinessCommentBB")
	public String getBusinessComment(@RequestParam Integer bid, @RequestParam Integer currentIndex,
			@RequestParam Integer jianGe, Model model) {
		List<Comment> comments = commentServiceImpl.getBusinessComment(bid, currentIndex, jianGe);
		String str = gson.toJson("comments");
		System.out.println(str);
		model.addAttribute("comments", comments);

		return "business/listcomment";

	}
}
