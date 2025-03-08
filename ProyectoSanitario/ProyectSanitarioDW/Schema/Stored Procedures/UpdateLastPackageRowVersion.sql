CREATE PROCEDURE san.UpdateLastPackageRowVersion﻿
	@tableName NVARCHAR(100)
	,@lastRowVersion BIGINT
  
  AS
  BEGIN
	UPDATE san.PackageConfig
	SET LastRowVersion = @lastRowVersion
	WHERE TableName = @tableName;
  END
GO