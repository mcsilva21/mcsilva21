# mcsilva21

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        ul{
            list-style:none;
        }
        li{
            margin: 20px;
        }
        li label{
            width: 80px;
            float:left;
        }
        fieldset {
            width: 400px;
            float:left;
        }
    </style>


</head>
<body>
    
    <form>
        <fieldset>
            <legend>개인정보</legend>
            <ul>
                <li>
                    <label for="name">이름</label>
                    <input type="text" id="name">
                </li>
                <li>
                    <label for="mail">메일주소</label>
                    <input type="text" id="mail">
                </li>
            </ul>
        </fieldset>

        <fieldset>
            <legend>로그인정보</legend>
            <ul>
                <li>
                    <label for="id">아이디</label>
                    <input type="text" id="id">
                </li>
                <li>
                    <label for="mail">비밀번호</label>
                    <input type="text" id="pwd">
                </li>
            </ul>
      

            <h3>회원가입</h3>
            <form>
            <fieldset>
            <legend>필수정보</legend>
                    <label for="id">이름:     <input type="text"></label>
            </fieldset>
            </form>
        
</body>
</html>