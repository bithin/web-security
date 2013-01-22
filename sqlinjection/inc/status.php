<?php
error_reporting(0);
define('ok',1);
$page = "home.php";
mysql_connect("localhost", "root", "amma") or die('Error');
mysql_select_db("task");
 
if (isset($_COOKIE['auth'])) {
        $auth = base64_decode($_COOKIE['auth']);
        list($login, $password) = explode('|', $auth);
        $q = mysql_query("SELECT login, status FROM users WHERE login = '".$login."'") or die('Error');
        if (mysql_num_rows($q) != 0) {
		echo '<table border=\'1\'>';
                echo '<th>User</th><th>Status</th>';
		while($r = mysql_fetch_assoc($q)) {
			echo '<tr>';
			echo '<td>'.$r['login'].'</td>';
			echo '<td>'.$r['status'].'</td>';	
			echo '</tr>';
		} 
		echo '</table>';
                die();
        } else {
                setcookie('auth',"");
        }
}
?>
 
