package com.jianzhi.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.jianzhi.entity.Comment;

public interface CommentMapper {
	void insertComment(Comment comment);

	List<Comment> getCommentsByoid(int oid);

	List<Comment> getComment3(@Param("oid") int oid, @Param("currentIndex") int currentIndex);

	List<Comment> getCommentUpdate(Map<String, Object> paras);

	List<Comment> getBusinessComment(@Param("bid") Integer bid, @Param("currentIndex") int currentIndex,
			@Param("jianGe") int jianGe);

	void updateComment(Comment comment);
}
