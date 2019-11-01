-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

INSERT INTO users (username, hashed_password)
VALUES ('Demo', ']E;KuWUZ^,fY-mvQ2+r"djkZMpk6Q<jF');

INSERT INTO families (user_id, family_name)
VALUES (
        (SELECT user_id FROM users WHERE username = 'Demo'), 
        'Skywalker'),
        (
        (SELECT user_id FROM users WHERE username = 'Demo'), 
        'Simpson')
        ;
        
INSERT INTO kids (firstname,family_id)
VALUES ('Leia', (SELECT family_id FROM families WHERE family_name = 'Skywalker')),
        ('Luke', (SELECT family_id FROM families WHERE family_name = 'Skywalker')),
        ('Bart', (SELECT family_id FROM families WHERE family_name = 'Simpson')),
        ('Lisa', (SELECT family_id FROM families WHERE family_name = 'Simpson')),
        ('Maggie', (SELECT family_id FROM families WHERE family_name = 'Simpson'));


COMMIT;

INSERT INTO gifts (gift_id, kid_id, gift_name, gift_picture_name, gift_notes)
VALUES (1,2,'Backpack','backpack.jpg'),
(2,4,'Capital in the Twenty-First Century','capital.jpg');
