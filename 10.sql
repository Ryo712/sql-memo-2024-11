SELECT MAX(price) FROM purchases;

SELECT MIN(price) FROM purchases;
/*purchases テーブル内の price の中で最も高い(MAX)or低い(MIN)金額が1件返されます。*/

SELECT MAX(price) FROM purchases WHERE character_name = "にんじゃわんこ";
/*character_name が「にんじゃわんこ」であるレコードにおける price の最大値が返されます。*/

SELECT SUM(price), purchased_at
FROM purchases
WHERE character_name = "にんじゃわんこ"
GROUP BY purchased_at;

/*SELECT句：purchases テーブルから、price カラムの合計 (SUM(price)) と purchased_at カラムを選択します。
GROUP BY句：purchased_at カラムを基準にレコードをグループ化します。
purchased_at ごとに price の合計が計算され、それぞれの購入日時に基づく集計結果が返されます。
*/