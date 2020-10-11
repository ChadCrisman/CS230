<?php 

function console_log($output, $with_script_tags = true) {
    $js_code = 'console.log(' . json_encode($output, JSON_HEX_TAG) . 
');';
    if ($with_script_tags) {
        $js_code = '<script>' . $js_code . '</script>';
    }
    echo $js_code;
}

require 'dbhandler.php';
define('MB', 1048576);

if (isset($_POST['gallery-submit'])) {
    console_log($_FILES);
    $file = $_FILES['gallery-image'];

    $file_name = $file['name'];
    $file_tmp_name = $file['tmp_name'];
    $file_error = $file['error'];
    $file_size = $file['size'];

    $title = $_POST['title'];
    $descript = $_POST['descript'];


    $ext = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));

    $allowed = array('jpg','jpeg','png','svg','jfif');

    if ($file_error !== 0) {
        header("Location: ../admin.php?error=UpdateError");
        exit();
    }
     if (!in_array($ext, $allowed)) {
        header("Location: ../admin.php?error=invalidType");
        exit();
   }
    if ($file_size > 4*MB) {
        header("Location: ../admin.php?error=fileSizeToLarge");
        exit();
    }
    else{
        $new_name = uniqid('',true).".".$ext;
        $destination = '../Products/'.$new_name;

        $sql = "INSERT INTO products (title, descript, picpath) VALUES (?,?,?)"; 
        $stmt = mysqli_stmt_init($conn);

        if(!mysqli_stmt_prepare($stmt, $sql)){
            header("Location: ../login.php?error=sqlInjection");
            exit();
        }
        else{
            mysqli_stmt_bind_param($stmt,"sss", $title, $descript, $new_name);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);

            move_uploaded_file($file_tmp_name,$destination);
            header("Location: ../admin.php?success=updateSuccess");
            exit();
        }
    }
}

?>

