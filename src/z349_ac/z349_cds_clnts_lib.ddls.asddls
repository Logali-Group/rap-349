@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes Libros'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity z349_cds_clnts_lib
  as select from z349_clnts_lib
{
  key id_libro                     as IdLibro,
      count( distinct id_cliente ) as Ventas
}
group by
  id_libro;
