CREATE TABLE [san].[Servicios] 
(
    [idServicio] NVARCHAR(10) , 
    [NombreCompleto] NVARCHAR(100) NOT NULL,
    [Comentario] NVARCHAR(255),
    CONSTRAINT [PK_pidServicio] PRIMARY KEY ([idServicio])
  );
