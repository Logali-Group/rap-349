@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

@Metadata.allowExtensions: true

define view entity z349_cds_libros
  as select from    z349_libros        as Libros
    inner join      z349_cds_categ     as Categ  on Libros.bi_categ = Categ.Categoria
    left outer join z349_cds_clnts_lib as Ventas on Libros.id_libro = Ventas.IdLibro
  association [0..*] to z349_cds_clientes as _Clientes on $projection.IdLibro = _Clientes.IdLibro
{
  key Libros.id_libro   as IdLibro,
      Libros.titulo     as Titulo,
      Libros.bi_categ   as Categoria,
      Categ.Descripcion as Description,
      Libros.autor      as Autor,
      Libros.editorial  as Editorial,
      Libros.idioma     as Idioma,
      Libros.paginas    as Paginas,
      @Semantics.amount.currencyCode: 'Moneda'
      Libros.precio     as Precio,
      Libros.moneda     as Moneda,

      case
        when Ventas.Ventas < 1 then 0
        when Ventas.Ventas = 1 then 1
        when Ventas.Ventas = 2 then 2
        when Ventas.Ventas > 2 then 3
        else 0
      end               as Ventas,
      ''                as VentasValue,


      Libros.formato    as Formato,
      Libros.url        as Imagen,
      _Clientes
}
