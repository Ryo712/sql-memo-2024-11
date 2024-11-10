SELECT MAX(price) FROM purchases;

SELECT MIN(price) FROM purchases;
/*purchases テーブル内の price の中で最も高い(MAX)or低い(MIN)金額が1件返されます。*/

SELECT MAX(price) FROM purchases WHERE character_name = "にんじゃわんこ";
/*character_name が「にんじゃわんこ」であるレコードにおける price の最大値が返されます。*/