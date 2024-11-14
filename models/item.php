<?php
class Item extends Db
{
    public function getAllItems()
    {
        $sql = self::$connection->prepare("SELECT * FROM items");
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }

    public function getNewItems($start, $count)
    {
        $sql = self::$connection->prepare("SELECT * FROM items 
        ORDER BY 'created_at' DESC
        LIMIT ?,?");
        $sql->bind_param("ii", $start, $count);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }

    public function searchcount($start, $count)
    {
        $sql = self::$connection->prepare("SELECT * FROM items 
        ORDER BY 'created_at' DESC
        LIMIT ?,?");
        $sql->bind_param("ii", $start, $count);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }


    public function getAllItemByCate($cate_id)
    {
        $sql = self::$connection->prepare("SELECT * FROM items 
        ORDER BY 'category' = ?");
        $sql->bind_param("i", $cate_id);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }
    public function getItemByCate($cate_id, $page, $count)
    {
        //
        $start = ($page - 1) * $count;
        $sql = self::$connection->prepare("SELECT * FROM items 
        ORDER BY 'category' = ?
        LIMIT ?,?");
        $sql->bind_param("iii", $cate_id, $start, $count);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }


    function paginate($url, $total, $count)
    {
        $totalLinks = ceil($total / $count);
        $link = "";
        for ($j = 1; $j <= $totalLinks; $j++) {
            $link = $link . "<a class = 'btn btn-sm btn-outline-secondary m-1' href='$url&page=$j'>$j</a>";
        }
        return $link;
    }
}
