--------------------------------------------------
-- 1. Герои поддержки - стихия
--------------------------------------------------
SELECT pers_feature, COUNT(*) AS feature_count
FROM Personage
WHERE pers_main_role = 'Support'
GROUP BY pers_main_role, pers_feature
ORDER BY pers_main_role;

--------------------------------------------------
-- 2. Стихия - кол-во героев
--------------------------------------------------
SELECT pers_feature, COUNT(*) AS feature_count
FROM Personage
GROUP BY pers_feature
ORDER BY pers_feature;

--------------------------------------------------
-- 3. Оружие - кол-во героев
--------------------------------------------------
SELECT pers_weapon, COUNT(*) AS weapon_count
FROM Personage
GROUP BY pers_weapon
ORDER BY pers_weapon;