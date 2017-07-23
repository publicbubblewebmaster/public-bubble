# --- !Ups
ALTER TABLE PUBLIC_BUBBLE.STATIC_CONTENT DROP COLUMN image_url;
ALTER TABLE PUBLIC_BUBBLE.STATIC_CONTENT ADD COLUMN image bytea;

ALTER TABLE PUBLIC_BUBBLE.COMMITTEE DROP COLUMN image_url;
ALTER TABLE PUBLIC_BUBBLE.COMMITTEE ADD COLUMN image bytea;

ALTER TABLE PUBLIC_BUBBLE.EVENT DROP COLUMN image_1_url;
ALTER TABLE PUBLIC_BUBBLE.EVENT ADD COLUMN image_1 bytea;

ALTER TABLE PUBLIC_BUBBLE.BLOG DROP COLUMN image_1_url;
ALTER TABLE PUBLIC_BUBBLE.BLOG ADD COLUMN image_1 bytea;

UPDATE PUBLIC_BUBBLE.BLOG  SET image_1 = 	E'\\000';
UPDATE PUBLIC_BUBBLE.EVENT SET image_1 = 	E'\\000';
UPDATE PUBLIC_BUBBLE.COMMITTEE SET image = 	E'\\000';
UPDATE PUBLIC_BUBBLE.STATIC_CONTENT SET image = 	E'\\000';

# --- !Downs
ALTER TABLE PUBLIC_BUBBLE.STATIC_CONTENT ADD COLUMN image_url text;
ALTER TABLE PUBLIC_BUBBLE.STATIC_CONTENT DROP COLUMN image;

ALTER TABLE PUBLIC_BUBBLE.COMMITTEE ADD COLUMN image_url text;
ALTER TABLE PUBLIC_BUBBLE.COMMITTEE DROP COLUMN image;

ALTER TABLE PUBLIC_BUBBLE.EVENT ADD COLUMN image_1_url text;
ALTER TABLE PUBLIC_BUBBLE.EVENT DROP COLUMN image_1;

ALTER TABLE PUBLIC_BUBBLE.BLOG ADD COLUMN image_1_url text;
ALTER TABLE PUBLIC_BUBBLE.BLOG DROP COLUMN image_1;
