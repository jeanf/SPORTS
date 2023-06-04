CREATE TABLE [dbo].[T_TDC]
(
	[tdc_id] [dbo].[T_ident] NOT NULL PRIMARY KEY IDENTITY(0,1), 
    [tdc_code] [dbo].[T_code2] NOT NULL DEFAULT 'XX', 
    [tdc_label] [dbo].[T_label] NOT NULL DEFAULT 'Type de constante', 
    [tdc_maj] [dbo].[T_maj] NOT NULL DEFAULT (GETDATE())
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Identifiant unique du type de constante',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'T_TDC',
    @level2type = N'COLUMN',
    @level2name = N'tdc_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Code sur 2 caractères du type de constante',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'T_TDC',
    @level2type = N'COLUMN',
    @level2name = N'tdc_code'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Libellé du type de constante',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'T_TDC',
    @level2type = N'COLUMN',
    @level2name = N'tdc_label'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Horodatage de mise à jour',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'T_TDC',
    @level2type = N'COLUMN',
    @level2name = N'tdc_maj'
GO

CREATE UNIQUE INDEX [IX_T_TDC_Code] ON [dbo].[T_TDC] ([tdc_code])
GO
