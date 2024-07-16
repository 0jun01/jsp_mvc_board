<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${board.title}</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f5f5fa; /* Light grey background */
	color: #333; /* Dark grey text color */
}

.container {
	background-color: #e0d5f2; /* Pastel purple background */
	padding: 20px;
	margin: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Soft shadow */
}

h2 {
	color: #6a0dad; /* Dark purple header */
}

p {
	color: #333; /* Dark grey text */
}

.btn {
	display: inline-block;
	padding: 8px 12px;
	margin: 5px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	text-decoration: none;
	color: #fff; /* White text */
	background-color: #6a0dad; /* Dark purple button */
}

.btn-edit {
	background-color: #9370db; /* Medium purple button for edit */
}

.btn-delete {
	background-color: #8b0000; /* Dark red button for delete */
}

.btn:hover {
	opacity: 0.8; /* Button opacity on hover */
}

h3 {
	color: #6a0dad; /* Dark purple heading */
}
/* Comment Form Styles */
.comment-form {
	background-color: #e0d5f2; /* Pastel purple background */
	padding: 20px;
	margin-top: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Soft shadow */
}

.comment-form h4 {
	color: #6a0dad; /* Dark purple heading */
	margin-bottom: 10px;
}

.comment-form label {
	display: block;
	margin-bottom: 8px;
	color: #333; /* Dark grey text */
}

.comment-form textarea {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
	box-sizing: border-box;
}

.comment-form .btn-submit {
	padding: 8px 16px;
	background-color: #6a0dad; /* Dark purple button */
	color: #fff; /* White text */
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.comment-form .btn-submit:hover {
	opacity: 0.8; /* Button opacity on hover */
}
</style>
</head>
<body>
	<div class="container">
		<h2>${board.title}</h2>
		<p>${board.content}</p>
		<p>
			<fmt:formatDate value="${board.createdAt}" pattern="yyyy-MM-dd hh:mm" />
		</p>
	</div>
	<c:if test="${board.userId == userID}">
		<a href="${pageContext.request.contextPath}/board/edit?id=${board.id}" class="btn btn-edit">수정</a>
		<a href="${pageContext.request.contextPath}/board/delete?id=${board.id}" class="btn btn-delete">삭제</a>
	</c:if>

	<a href="${pageContext.request.contextPath}/board/list?page=1" class="btn btn-edit">목록으로 돌아가기</a>

	<div class="comment-form">
		<h3>댓글 작성하기</h3>
		<form action="${pageContext.request.contextPath}/board/comment" method="post">
			<label for="commenterName">이름</label> <input type="text" id="commenterName" name="commenterName" placeholder="이름을 입력하세요" required> <label for="commentContent">댓글
				내용</label>
			<textarea id="commentContent" name="commentContent" rows="4" placeholder="댓글을 입력하세요" required></textarea>

			<button type="submit" class="btn btn-submit">댓글 작성</button>
		</form>
	</div>

	<h3>댓글</h3>
	<!-- 댓글 리스트 작성 -->
	<!-- 댓글 작성 폼 -->

</body>
</html>