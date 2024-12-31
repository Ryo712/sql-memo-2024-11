<?php
// 試験の得点を設定します（例: 75点）
$score = 75;

// 行き先を判定する条件分岐
if ($score >= 90) {
    $destination = "沖縄";
} elseif ($score >= 31) {
    $destination = "名古屋";
} else {
    $destination = "埼玉";
}

// 結果を出力
echo "RYOの行き先は {$destination} です。";
?>

<!--このプログラムでは、得点 $score を基に条件分岐を使用して行き先を決定-->
