-- Load annual, average minimum wages into SQL

DROP TABLE IF EXISTS avg_min_wages;
CREATE TABLE IF NOT EXISTS avg_min_wages (
    ano year(4) unsigned NOT NULL,
    `minwage_real` decimal(9,2) unsigned DEFAULT NULL
        COMMENT 'Average real minimum wage in reais using INPC price index',
    `minwage_nom`  decimal(9,3) unsigned DEFAULT NULL
        COMMENT 'Nominal minimum wage in reais',
    PRIMARY KEY (ano)
) ENGINE=Aria TRANSACTIONAL=0 ROW_FORMAT=FIXED;


LOAD DATA LOCAL INFILE 'data/avgwage.tsv'
    INTO TABLE avg_min_wages
    CHARACTER SET 'utf8'
    IGNORE 1 LINES
    (ano, @minwage_nom,  @min_reais_nominal,   @max_reais_nominal,
          @minwage_real, @min_reais_real_inpc, @max_reais_real_inpc)
    SET `minwage_nom` = NULLIF(@minwage_nom, ''),
        `minwage_real` = NULLIF(@minwage_real, '')
    ;

SHOW WARNINGS;
