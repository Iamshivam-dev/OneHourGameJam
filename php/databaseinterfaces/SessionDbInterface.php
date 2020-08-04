<?php

define("DB_TABLE_SESSION", "session");

define("DB_COLUMN_SESSION_ID",                  "session_id");
define("DB_COLUMN_SESSION_USER_ID",             "session_user_id");
define("DB_COLUMN_SESSION_DATETIME_STARTED",    "session_datetime_started");
define("DB_COLUMN_SESSION_DATETIME_LAST_USED",  "session_datetime_last_used");

class SessionDbInterface{
    private $dbConnection;
    private $publicColumns = Array(DB_COLUMN_SESSION_USER_ID);
    private $privateColumns = Array(DB_COLUMN_SESSION_ID, DB_COLUMN_SESSION_DATETIME_STARTED, DB_COLUMN_SESSION_DATETIME_LAST_USED);

    function __construct(&$dbConn) {
        $this->dbConnection = $dbConn;
    }

    public function SelectSessionsOfUser($userId){
        AddActionLog("SessionDbInterface_SelectSessionsOfUser");
        StartTimer("SessionDbInterface_SelectSessionsOfUser");

        $escapedUserId = mysqli_real_escape_string($this->dbConnection, $userId);
        $sql = "
            SELECT *
            FROM ".DB_TABLE_SESSION."
            WHERE ".DB_COLUMN_SESSION_USER_ID." = $escapedUserId;
        ";
        
        StopTimer("essionDbInterface_SelectSessionsOfUser");
        return mysqli_query($this->dbConnection, $sql);
    }

    private function SelectPublicData(){
        AddActionLog("SessionDbInterface_SelectPublicData");
        StartTimer("SessionDbInterface_SelectPublicData");

        $sql = "
            SELECT ".implode(",", $this->publicColumnsSession)."
            FROM ".DB_TABLE_SESSION.";
        ";

        StopTimer("SessionDbInterface_SelectPublicData");
        return mysqli_query($this->dbConnection, $sql);
    }
}

?>