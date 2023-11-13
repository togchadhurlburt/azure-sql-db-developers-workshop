﻿-- This file contains SQL statements that will be executed after the build script.
-- This file contains SQL statements that will be executed after the build script.
insert into dbo.person(person_name, person_email, pet_preference) values('Bill','bill@contoso.com','Dogs');
insert into dbo.person(person_name, person_email, pet_preference) values('Frank', 'frank@contoso.com','Cats');
insert into dbo.person(person_name, person_email, pet_preference) values('Riley', 'Riley@contoso.com','Cats');
insert into address (person_id, address) values (1, 'Lincoln, MA');
insert into address (person_id, address) values (2, 'Baltimore, MD');
insert into dbo.todo 
(
    [id],
    [title],
    [completed],
    [owner_id],
    [position]
) 
values
    ('00000000-0000-0000-0000-000000000001', N'Hello world', 0, 'public', 1),
    ('00000000-0000-0000-0000-000000000002', N'This is done', 1, 'public', 2),
    ('00000000-0000-0000-0000-000000000003', N'And this is not done (yet!)', 0, 'public', 4),
    ('00000000-0000-0000-0000-000000000004', N'This is a ☆☆☆☆☆ tool!', 0, 'public', 3),
    ('00000000-0000-0000-0000-000000000005', N'Add support for sorting', 1, 'public', 5)
;
GO
