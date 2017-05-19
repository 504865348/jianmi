package com.jianzhi.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jianzhi.dao.CommentMapper;
import com.jianzhi.entity.Comment;

@Transactional
@Service
public class CommentServiceImpl implements CommentService {
	@Resource
	Comment inComment;
	@Resource
	List<Comment> comments;
	@Resource
	CommentMapper commentMapper;

	@Override
	public void insertComment(Comment comment) {
		// TODO Auto-generated method stub
		commentMapper.insertComment(comment);
	}

	@Override
	public List<Comment> getCommentsByoid(int oid) {
		// TODO Auto-generated method stub
		comments = commentMapper.getCommentsByoid(1);
		return comments;
	}

	@Override
	public List<Comment> getComment3(@Param("oid") int oid, @Param("currentIndex") int currentIndex) {
		// TODO Auto-generated method stub
		comments = commentMapper.getComment3(oid, currentIndex);

		return comments;
	}

	@Override
	public List<Comment> getCommentUpdate(Map<String, Object> paras) {
		comments = commentMapper.getCommentUpdate(paras);
		return comments;
	}

	@Override
	public List<Comment> getBusinessComment(Integer bid, int currentIndex, int jianGe) {
		comments = commentMapper.getBusinessComment(bid, currentIndex, jianGe);
		return comments;
	}

	@Override
	public void updateComment(Comment comment) {
		// TODO Auto-generated method stub
		commentMapper.updateComment(comment);
	}

}
