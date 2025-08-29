<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soal 5</title>
</head>

<body>
    <table border="1">
        <tr>
            <th>Hobi</th>
            <th>Jumlah Person</th>
        </tr>

        <?php
        $db_host = "localhost";
        $db_user = "root";
        $db_pass = "";
        $db_name = "testdb";

        $conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

        if ($conn->connect_error) {
            die("Koneksi gagal: " . $conn->connect_error);
        }

        $qHobby = isset($_POST['qHobby']) ? $_POST['qHobby'] : '';

        $sql = "SELECT DISTINCT hobi, COUNT(hobi) AS person_id
            FROM hobi 
            WHERE (hobi.hobi LIKE '%$qHobby%' OR '$qHobby' = '') 
            GROUP BY hobi.hobi
            ORDER BY COUNT(hobi) DESC";

        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td>" . $row['hobi'] . "</td>";
                echo "<td>" . $row['person_id'] . "</td>";
                echo "<tr>";
            }
        } else {
            echo "<tr><td colspan='3'>Data tidak ditemukan</td></tr>";
        }

        mysqli_close($conn);
        ?>
    </table>
    <br><br>
    <form method="post" style="width: fit-content;">
        <div>
            Hobi :
            <input type="text" name="qHobby" placeholder="Cari hobi" value="<?= $qHobby; ?>">
        </div>
        <br>

        <div style="text-align: center;">
            <button type="submit">SEARCH</button>
        </div>
    </form>

</body>

</html>