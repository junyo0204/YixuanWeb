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
            $id = $_POST["id"];
            $res = mysqli_query($conn, "select * from product_data where id = '$id' ") or die("SQL語法錯誤");
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

        <div class="product_table">
            
          <?php
            while ($array = mysqli_fetch_assoc($res)) {
          ?>

              <div class="P_div_des">
                <center>
                  <div class="describe">
                    <?php echo nl2br($array['product_describe']);?><br>
                    <br>商品編號:<?php echo ($array['id']);?>
                    <br>售價:<?php echo $array['price'];?>
                  </div>          
                </center>
              </div>

              <div class="P_div_des">
                <center>
                  <img alt="books photo" src="<?php echo ($array['img_front']);?>" class="img_indiv_des"><br>          
                </center>
              </div>

              <div class="P_div_des">
                <center>
                  <img alt="books photo" src="<?php echo ($array['img_back']);?>" class="img_indiv_des"><br>          
                </center>
              </div>

              <div class="P_div_des">
                <center>
                  <img alt="books photo" src="<?php echo ($array['img_content']);?>" class="img_indiv_des"><br>          
                </center>
              </div>

          <?php
            }
          ?>

        </div>

      </div>
    
    </div>

  </body>

</html>