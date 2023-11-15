<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상담소</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/counselingCenterWrite.css">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
</head>
<body>
    <div style="display: flex;margin-top: 200px;margin-bottom: 170px;justify-content: center;">
        <div style="width: 1200px;display: flex;flex-direction: column;">
            
            <form action="${pageContext.request.contextPath}/counselingCenter/counselingCenterList.jsp" onsubmit="return registMsg();">
                <!-- 제목/등록날짜 -->
                <div style="display: flex;">
                    <!-- 제목 -->
                    <input type="text" class="title" id="title" placeholder="제목을 입력하세요.">
                </div>
                <!-- 내용 -->
                <textarea id="summernote" class="summernote"></textarea>
                <!-- 이전/수정 -->
                <div style="display: flex;justify-content: space-between;margin-top: 10px;">
                    <!-- 이전 -->
                    <input type="button" class="previous-btn" onclick="history.back()" value="이전">
                    <!-- 수정 -->
                    <button class="regist-btn">등록</button>
                </div>
            </form>
        </div>
    </div>
<script src="${pageContext.request.contextPath}/resources/js/counselingCenterWrite.js"></script>
<script>
    $('#summernote').summernote({
        placeholder: '내용을 입력하세요.',
        tabsize: 2,
        height: 500,
        focus: true,
        toolbar: [
            ['style', ['style']],
            ['font', ['bold', 'underline', 'clear']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['table', ['table']],
            ['insert', ['link', 'picture', 'video']],
            ['view', ['fullscreen', 'codeview', 'help']]
        ]
    });
</script>
</body>
</html>