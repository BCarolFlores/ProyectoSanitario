create procedure [dbo].[GetDatabaseRowVersion] as
begin
 SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
 SET NOCOUNT ON
 
 SELECT DBTS=(CONVERT(BIGINT, MIN_ACTIVE_ROWVERSION())-1);
end;