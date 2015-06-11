
DROP TABLE IF EXISTS decimal_test;

CREATE table decimal_test (
  id INTEGER NOT NULL AUTO_INCREMENT,
  input_string VARCHAR(255) NOT NULL,
  input_number BIGINT(40) NOT NULL,
  size_1 DECIMAL(1, 0) NOT NULL,
  size_1u DECIMAL(1, 0) UNSIGNED NOT NULL,
  size_2 DECIMAL(2, 0) NOT NULL,
  size_2u DECIMAL(2, 0) UNSIGNED NOT NULL,
  size_3 DECIMAL(3, 0) NOT NULL,
  size_3u DECIMAL(3, 0) UNSIGNED NOT NULL,
  size_4 DECIMAL(4, 0) NOT NULL,
  size_4u DECIMAL(4, 0) UNSIGNED NOT NULL,
  size_5 DECIMAL(5, 0) NOT NULL,
  size_5u DECIMAL(5, 0) UNSIGNED NOT NULL,
  size_6 DECIMAL(6, 0) NOT NULL,
  size_6u DECIMAL(6, 0) UNSIGNED NOT NULL,
  size_7 DECIMAL(7, 0) NOT NULL,
  size_7u DECIMAL(7, 0) UNSIGNED NOT NULL,
  size_8 DECIMAL(8, 0) NOT NULL,
  size_8u DECIMAL(8, 0) UNSIGNED NOT NULL,
  size_9 DECIMAL(9, 0) NOT NULL,
  size_9u DECIMAL(9, 0) UNSIGNED NOT NULL,
  size_10 DECIMAL(10, 0) NOT NULL,
  size_10u DECIMAL(10, 0) UNSIGNED NOT NULL,
  PRIMARY KEY (id)
);
