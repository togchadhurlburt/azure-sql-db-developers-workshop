CREATE PROCEDURE dbo.get_person_by_pet
    @pet nvarchar(100)
AS
BEGIN
    select *
    from dbo.person
    where pet_preference = iif(NULLIF(@pet, '') IS NOT NULL,@pet,pet_preference);
END;
GO

