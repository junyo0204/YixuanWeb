<!DOCTYPE html>
<html>
  <head>

    <link rel="stylesheet" type="text/css" href="app.css">
    <meta charset="utf-8" />
    <title>一軒文教社</title>

    <?php
            include('db_link.php');
            $database = 'yixuan';
            $select = mysqli_select_db($conn, $database) or die("資料庫選擇失敗");
            $res = mysqli_query($conn, "select * from company_data") or die("SQL語法錯誤");

    ?>

  </head>

  <body>

    <div class='navbar'>

           <nav>

              <p class="title" onclick="location.href='./index.php'"> 一軒文教社 </p>

           </nav>
      
    </div>

    <div class="main">

      <div class="content">

        <div class="left_list">
          <center>
            <button onclick="location.href='./chinese.php'">國語簿</button>
            <button onclick="location.href='./math.php'">數學簿</button>
            <button onclick="location.href='./word.php'">生字簿</button>
            <button onclick="location.href='./music.php'">音樂簿</button>
            <button onclick="location.href='./english.php'">英文簿</button>
            <button onclick="location.href='./writing.php'">作文簿</button>
            <button onclick="location.href='./table_pad.php'">桌墊</button>
          </center>
        </div>

        <div class="sec_but_list"> 
          
        </div>


          <?php
            while ($array = mysqli_fetch_assoc($res)) {
          ?>

        <div class="img">
          
          <img width="440" height="330" src="<?php echo ($array['img_1']);?>" with="100%" height="100%">
          <img width="440" height="330" src="<?php echo ($array['img_2']);?>" with="100%" height="100%">
            
        </div>

          <?php
            }
          ?>

        

      </div>
    

    </div>

  </body>

</html>