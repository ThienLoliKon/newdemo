<?php
class User extends Db
{
    public function getAllCates()
    {
        $sql = self::$connection->prepare("SELECT * FROM categories");
        $sql->execute();
        $items = array();
        $item = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }
}
