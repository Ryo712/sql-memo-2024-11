SELECT character_name FROM purchases;
/*
purchases テーブル内にある character_name カラムの全レコードが返されます。重複がある場合もそのまま含まれます。
*/

SELECT DISTINCT(character_name) FROM purchases;
/*
purchases テーブル内の character_name カラムにおける一意な値のみが返されます。
(character_nameの重複を排除)
*/

SELECT DISTINCT(name) FROM purchases;
/*
purchases テーブルから name カラムの中で重複を排除した一意の値だけを選択して取得します。
*/