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


SELECT SUM(price), purchased_at
FROM purchases
GROUP BY purchased_at
HAVING SUM(price) > 2000;
/*HAVING句：HAVING 句は、GROUP BY でグループ化された各グループに対して条件を指定します。
この条件では、SUM(price) が 2000 を超えるグループのみを選択します。
HAVING は WHERE と似ていますが、WHERE はグループ化の前にレコードを絞り込むのに対し、HAVING はグループ化後の結果に条件を適用します。
*/

SELECT SUM(price), purchased_at, character_name
FROM purchases
GROUP BY purchased_at, character_name
HAVING SUM(price) > 3000;
/*
SELECT句：purchases テーブルから price カラムの合計 (SUM(price))、
および purchased_at と character_name カラムを選択して取得します。

SUM(price) はグループ化された各 purchased_at と character_name の組み合わせ内で計算されているので、
SUM(price) はグループ化されています。
*/

SELECT name AS "選手名", height AS "身長"
FROM players
WHERE height > (
  SELECT AVG(height)
  FROM players
);

/*
SELECT句：AS を使用して、name カラムに「選手名」という別名を、height カラムに「身長」という別名をつけています。
これにより、結果の表示時に列名が日本語で表示されます。
内側のサブクエリ：players テーブルの height カラムの平均値を計算し、その結果を返します。
このクエリを実行した結果、players テーブルにある選手のうち、平均身長を超える選手だけが選ばれます。
*/

SELECT *
FROM players
JOIN countries
ON players.country_id = countries.id
WHERE countries.name = "日本"
AND height >= 180;

/*
SELECT句：players テーブルと countries テーブルの結合結果から全てのカラムを取得します。
JOIN句：players テーブルの country_id カラムと countries テーブルの id カラムを関連付けて、
両テーブルを結合します。これにより、選手がどの国に所属しているかが紐付けられます。
結果：結果として、日本出身の選手の中で身長が180以上の人の全ての情報が返されます。
*/

SELECT countries.name AS "国名", AVG(goals) AS "平均得点"
FROM players
JOIN countries
ON players.country_id = countries.id
GROUP BY countries.name;

/*
SELECT句：countries.name カラムの値を選択し、それに「国名」という別名を付けます。
AVG(goals) は、各国の選手の得点 (goals) の平均値を計算し、それに「平均得点」という別名を付けます。
結果として、国名とその国の選手の平均得点が表示されます。
JOIN句：players テーブルと countries テーブルを結合します。
players.country_id と countries.id をキーとして結合することで、選手とその所属国を紐付けます。
GROUP BY句：countries.name を基準にデータをグループ化します。
各国ごとに選手をまとめる。グループ化しないと、AVG(goals) のような集計関数を使うことはできない。
*/

SELECT SUM(price), character_name
FROM purchases
WHERE category = "雑費"
GROUP BY character_name;

/*
WHERE句：条件として category カラムが「雑費」であるレコードのみを抽出します。
GROUP BY句：各キャラクターごとに「雑費」カテゴリーの購入データがまとめられます。
*/