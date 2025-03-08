CREATE PROCEDURE san.GetLastPackageRowVersion

	@tableName NVARCHAR(100)

  AS
  BEGIN
	SELECT LastRowVersion
	FROM san.PackageConfig
	WHERE TableName = @tableName;
  END
GO