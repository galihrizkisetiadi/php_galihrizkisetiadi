<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soal 1</title>
</head>


<body>
    <?php

    $step = isset($_GET['step']) ? $_GET['step'] : 1;
    $row = isset($_POST['row']) ? $_POST['row'] : 0;
    $col = isset($_POST['col']) ? $_POST['col'] : 0;
    $result = array();

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        if ($step == 1) {
            $row = $_POST['row'];
            $col = $_POST['col'];
            $step = 2;
        } elseif ($step == 2) {
            for ($i = 0; $i < $row; $i++) {
                for ($j = 0; $j < $col; $j++) {
                    $result[$i][$j] = $_POST['input'][$i][$j];
                };
            };
            $step = 3;
        }
    }

    ?>

    <?php if ($step == 1) { ?>
        <form method="post" action="?step=1" style="width: fit-content;">
            <div>
                <span>Inputkan Jumlah Baris: </span>
                <input name="row" type="number" required>
                <span>Contoh: 1</span>
            </div>
            <br>
            <div>
                <span>Inputkan Jumlah Kolom: </span>
                <input name="col" type="number" required>
                <span>Contoh: 3</span>
            </div>
            <br>
            <div style="text-align: center;">
                <input type="submit" value="Submit" />
            </div>
        </form>

    <?php } elseif ($step == 2) { ?>
        <form method="post" action="?step=2" style="width: fit-content;">
            <?php for ($i = 0; $i < $row; $i++) { ?>
                <?php for ($j = 0; $j < $col; $j++) { ?>
                    <?php echo $i + 1 . '.' . $j + 1 ?> :
                    <input name="input<?php echo '[' . $i . ']' . '[' . $j . ']' ?>" type="text">
                <?php }; ?>
                <br>
                <br>
            <?php }; ?>

            <input type="hidden" name="row" value="<?= $row; ?>">
            <input type="hidden" name="col" value="<?= $col; ?>">

            <div style="text-align: center;">
                <input type="submit" value="Submit" />
            </div>
        </form>

    <?php } elseif ($step == 3) { ?>
        <div style="font-weight: bold;">
            <?php for ($i = 0; $i < $row; $i++) { ?>
                <?php for ($j = 0; $j < $col; $j++) { ?>
                    <?php echo $i + 1 . '.' . $j + 1 . ': ' . $result[$i][$j] ?>
                    <br>
                <?php }; ?>
            <?php }; ?>
        </div>
    <?php } ?>
</body>

</html>