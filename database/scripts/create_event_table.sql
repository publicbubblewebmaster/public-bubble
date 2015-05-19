create table EVENT (
   ID SERIAL PRIMARY KEY,
   TITLE VARCHAR(50),
   LOCATION VARCHAR(80),
   DESCRIPTION VARCHAR(1000),
   DISPLAY_FROM DATE,
   DISPLAY_UNTIL DATE,
   IMAGE_1_URL VARCHAR
);
