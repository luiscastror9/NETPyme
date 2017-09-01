
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/01/2017 19:41:36
-- Generated from EDMX file: C:\Users\comunidad-it\Documents\GitHub\NETPyme\NETPyme\ModelPyme.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DB_A2A1BA_basePyme];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'UsuariosSet'
CREATE TABLE [dbo].[UsuariosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL,
    [apellido] nvarchar(max)  NULL
);
GO

-- Creating table 'PymesSet'
CREATE TABLE [dbo].[PymesSet] (
    [IdPyme] int IDENTITY(1,1) NOT NULL,
    [tipoPyme] nvarchar(max)  NOT NULL,
    [UsuariosId] int  NOT NULL
);
GO

-- Creating table 'ColaboradoresSet'
CREATE TABLE [dbo].[ColaboradoresSet] (
    [IdColaborador] int IDENTITY(1,1) NOT NULL,
    [tipoColaborador] nvarchar(max)  NOT NULL,
    [UsuariosId] int  NOT NULL
);
GO

-- Creating table 'MicroSet'
CREATE TABLE [dbo].[MicroSet] (
    [IdMicro] int IDENTITY(1,1) NOT NULL,
    [facturacion] nvarchar(max)  NOT NULL,
    [candtidadEmpleados] nvarchar(max)  NOT NULL,
    [PymesIdPyme] int  NOT NULL
);
GO

-- Creating table 'PequenaSet'
CREATE TABLE [dbo].[PequenaSet] (
    [IdPequena] int IDENTITY(1,1) NOT NULL,
    [facturacion] nvarchar(max)  NOT NULL,
    [cantidadEmpleados] nvarchar(max)  NOT NULL,
    [PymesIdPyme] int  NOT NULL
);
GO

-- Creating table 'MedianaSet'
CREATE TABLE [dbo].[MedianaSet] (
    [IdMediana] int IDENTITY(1,1) NOT NULL,
    [facturacion] nvarchar(max)  NOT NULL,
    [cantidadEmpleados] nvarchar(max)  NOT NULL,
    [PymesIdPyme] int  NOT NULL
);
GO

-- Creating table 'ProfesionalesSet'
CREATE TABLE [dbo].[ProfesionalesSet] (
    [IdProfesionales] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL,
    [apellido] nvarchar(max)  NOT NULL,
    [nroMatricula] nvarchar(max)  NOT NULL,
    [ColaboradoresIdColaborador] int  NOT NULL
);
GO

-- Creating table 'EstudiantesSet'
CREATE TABLE [dbo].[EstudiantesSet] (
    [IdEstudiantes] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL,
    [apellido] nvarchar(max)  NOT NULL,
    [nroLegajo] nvarchar(max)  NOT NULL,
    [ColaboradoresIdColaborador] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'UsuariosSet'
ALTER TABLE [dbo].[UsuariosSet]
ADD CONSTRAINT [PK_UsuariosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdPyme] in table 'PymesSet'
ALTER TABLE [dbo].[PymesSet]
ADD CONSTRAINT [PK_PymesSet]
    PRIMARY KEY CLUSTERED ([IdPyme] ASC);
GO

-- Creating primary key on [IdColaborador] in table 'ColaboradoresSet'
ALTER TABLE [dbo].[ColaboradoresSet]
ADD CONSTRAINT [PK_ColaboradoresSet]
    PRIMARY KEY CLUSTERED ([IdColaborador] ASC);
GO

-- Creating primary key on [IdMicro] in table 'MicroSet'
ALTER TABLE [dbo].[MicroSet]
ADD CONSTRAINT [PK_MicroSet]
    PRIMARY KEY CLUSTERED ([IdMicro] ASC);
GO

-- Creating primary key on [IdPequena] in table 'PequenaSet'
ALTER TABLE [dbo].[PequenaSet]
ADD CONSTRAINT [PK_PequenaSet]
    PRIMARY KEY CLUSTERED ([IdPequena] ASC);
GO

-- Creating primary key on [IdMediana] in table 'MedianaSet'
ALTER TABLE [dbo].[MedianaSet]
ADD CONSTRAINT [PK_MedianaSet]
    PRIMARY KEY CLUSTERED ([IdMediana] ASC);
GO

-- Creating primary key on [IdProfesionales] in table 'ProfesionalesSet'
ALTER TABLE [dbo].[ProfesionalesSet]
ADD CONSTRAINT [PK_ProfesionalesSet]
    PRIMARY KEY CLUSTERED ([IdProfesionales] ASC);
GO

-- Creating primary key on [IdEstudiantes] in table 'EstudiantesSet'
ALTER TABLE [dbo].[EstudiantesSet]
ADD CONSTRAINT [PK_EstudiantesSet]
    PRIMARY KEY CLUSTERED ([IdEstudiantes] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UsuariosId] in table 'PymesSet'
ALTER TABLE [dbo].[PymesSet]
ADD CONSTRAINT [FK_UsuariosPymes]
    FOREIGN KEY ([UsuariosId])
    REFERENCES [dbo].[UsuariosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsuariosPymes'
CREATE INDEX [IX_FK_UsuariosPymes]
ON [dbo].[PymesSet]
    ([UsuariosId]);
GO

-- Creating foreign key on [UsuariosId] in table 'ColaboradoresSet'
ALTER TABLE [dbo].[ColaboradoresSet]
ADD CONSTRAINT [FK_UsuariosColaboradores]
    FOREIGN KEY ([UsuariosId])
    REFERENCES [dbo].[UsuariosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsuariosColaboradores'
CREATE INDEX [IX_FK_UsuariosColaboradores]
ON [dbo].[ColaboradoresSet]
    ([UsuariosId]);
GO

-- Creating foreign key on [ColaboradoresIdColaborador] in table 'ProfesionalesSet'
ALTER TABLE [dbo].[ProfesionalesSet]
ADD CONSTRAINT [FK_ColaboradoresProfesionales]
    FOREIGN KEY ([ColaboradoresIdColaborador])
    REFERENCES [dbo].[ColaboradoresSet]
        ([IdColaborador])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ColaboradoresProfesionales'
CREATE INDEX [IX_FK_ColaboradoresProfesionales]
ON [dbo].[ProfesionalesSet]
    ([ColaboradoresIdColaborador]);
GO

-- Creating foreign key on [ColaboradoresIdColaborador] in table 'EstudiantesSet'
ALTER TABLE [dbo].[EstudiantesSet]
ADD CONSTRAINT [FK_ColaboradoresEstudiantes]
    FOREIGN KEY ([ColaboradoresIdColaborador])
    REFERENCES [dbo].[ColaboradoresSet]
        ([IdColaborador])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ColaboradoresEstudiantes'
CREATE INDEX [IX_FK_ColaboradoresEstudiantes]
ON [dbo].[EstudiantesSet]
    ([ColaboradoresIdColaborador]);
GO

-- Creating foreign key on [PymesIdPyme] in table 'MicroSet'
ALTER TABLE [dbo].[MicroSet]
ADD CONSTRAINT [FK_PymesMicro]
    FOREIGN KEY ([PymesIdPyme])
    REFERENCES [dbo].[PymesSet]
        ([IdPyme])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PymesMicro'
CREATE INDEX [IX_FK_PymesMicro]
ON [dbo].[MicroSet]
    ([PymesIdPyme]);
GO

-- Creating foreign key on [PymesIdPyme] in table 'PequenaSet'
ALTER TABLE [dbo].[PequenaSet]
ADD CONSTRAINT [FK_PymesPequena]
    FOREIGN KEY ([PymesIdPyme])
    REFERENCES [dbo].[PymesSet]
        ([IdPyme])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PymesPequena'
CREATE INDEX [IX_FK_PymesPequena]
ON [dbo].[PequenaSet]
    ([PymesIdPyme]);
GO

-- Creating foreign key on [PymesIdPyme] in table 'MedianaSet'
ALTER TABLE [dbo].[MedianaSet]
ADD CONSTRAINT [FK_PymesMediana]
    FOREIGN KEY ([PymesIdPyme])
    REFERENCES [dbo].[PymesSet]
        ([IdPyme])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PymesMediana'
CREATE INDEX [IX_FK_PymesMediana]
ON [dbo].[MedianaSet]
    ([PymesIdPyme]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------