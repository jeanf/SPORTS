CREATE TABLE [dbo].[T_CONST]
(
	[const_id] [dbo].[T_ident] NOT NULL PRIMARY KEY NONCLUSTERED IDENTITY(0,1), 
    [tdc_id] [dbo].[T_ident] NOT NULL DEFAULT 0, 
    [const_code] [dbo].[T_code5] NOT NULL DEFAULT 'TTXXX', 
    [const_label] [dbo].[T_label] NOT NULL DEFAULT 'Pas de constante', 
    [const_ordre] [dbo].[T_entiers] NOT NULL DEFAULT 0, 
    [const_maj] [dbo].[T_maj] NOT NULL DEFAULT (GETDATE()), 
    CONSTRAINT [FK_T_CONST_ToTdc] FOREIGN KEY ([tdc_id]) REFERENCES [dbo].[T_TDC]([tdc_id])
)

GO


CREATE UNIQUE CLUSTERED INDEX IX_T_CONST_tdc_ordre_id ON dbo.T_CONST
	(
	tdc_id,
	const_ordre,
	const_id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IX_T_CONST_Code] ON [dbo].[T_CONST] ([const_code])
GO

EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Identifiant unique de la constante',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'T_CONST',
    @level2type = N'COLUMN',
    @level2name = N'const_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Type de la constante',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'T_CONST',
    @level2type = N'COLUMN',
    @level2name = N'tdc_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Code de la constante',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'T_CONST',
    @level2type = N'COLUMN',
    @level2name = N'const_code'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Libellé de la constante',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'T_CONST',
    @level2type = N'COLUMN',
    @level2name = N'const_label'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Ordre de la constante pour son type',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'T_CONST',
    @level2type = N'COLUMN',
    @level2name = N'const_ordre'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Horodatage de mise à jour',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'T_CONST',
    @level2type = N'COLUMN',
    @level2name = 'const_maj'
GO
