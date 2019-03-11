<?php

//Add a suggested theme
function AddTheme($newTheme, $isBot){
	global $themes, $jams, $config, $dbConn, $ip, $userAgent, $loggedInUser;

	if($isBot){
		$user = "bot";
	}else{
		//Authorize user (logged in)
		$user = $loggedInUser;
		if($user === false){
			return "NOT_LOGGED_IN";
		}
	}

	$newTheme = trim($newTheme);
	if($newTheme == ""){
		return "INVALID_THEME";
	}

	foreach($themes as $i => $theme){
		if(strtolower($theme["theme"]) == strtolower($newTheme)){
			return "THEME_ALREADY_SUGGESTED";
		}
	}

	$jamNumber = 1; // Number of non deleted jams traversed
	foreach ($jams as $i => $jam) {
		if ($jam["jam_deleted"] == 0) {
			if (strtolower($jam["theme"]) == strtolower($newTheme))
				return "THEME_RECENTLY_USED";
			if (++$jamNumber > $config["JAM_THEMES_CONSIDERED_RECENT"]["VALUE"])
				break;
		}
	}

	$clean_ip = mysqli_real_escape_string($dbConn, $ip);
	$clean_userAgent = mysqli_real_escape_string($dbConn, $userAgent);
	$clean_newTheme = mysqli_real_escape_string($dbConn, $newTheme);
	$clean_userName = mysqli_real_escape_string($dbConn, $user["username"]);

	//Insert new theme
	$sql = "
		INSERT INTO theme
		(theme_datetime, theme_ip, theme_user_agent, theme_text, theme_author)
		VALUES (Now(), '$clean_ip', '$clean_userAgent', '$clean_newTheme', '$clean_userName');";
	$data = mysqli_query($dbConn, $sql);
	$sql = "";

	return "SUCCESS";
}

function PerformAction(&$loggedInUser){
	global $_POST;

	if($loggedInUser !== false){
		$newTheme = $_POST["theme"];
		return AddTheme($newTheme, false);
	}
}

?>