@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

@Metadata.allowExtensions: true

define view entity z349_cds_clientes
  as select from z349_clientes  as Clientes
    inner join   z349_clnts_lib as RelClLib on RelClLib.id_cliente = Clientes.id_cliente
{

  key RelClLib.id_libro    as IdLibro,
  key Clientes.id_cliente  as IdCliente,
  key Clientes.tipo_acceso as Acceso,
      Clientes.nombre      as Nombre,
      Clientes.apellidos   as Apellidos,
      Clientes.email       as Email,
      Clientes.url         as Imagen
}
