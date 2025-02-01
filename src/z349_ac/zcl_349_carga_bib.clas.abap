class zcl_349_carga_bib definition
  public
  final
  create public .

  public section.
    interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.

class zcl_349_carga_bib implementation.

  method if_oo_adt_classrun~main.

"NEW CHANGE

    data: lt_acc_categ type table of z349_acc_categ,
          lt_catego    type table of z349_catego,
          lt_clientes  type table of z349_clientes,
          lt_clnts_lib type table of z349_clnts_lib,
          lt_libros    type table of z349_libros.

******** TABLA1 ********
    "fill internal table
    lt_acc_categ = value #(
    ( bi_categ ='A' tipo_acceso ='1' )
    ( bi_categ ='B' tipo_acceso ='1' )
    ( bi_categ ='C' tipo_acceso ='2' )
    ( bi_categ ='D' tipo_acceso ='2' )
    ( bi_categ ='E' tipo_acceso ='2' )
    ( bi_categ ='F' tipo_acceso ='3' )
    ( bi_categ ='G' tipo_acceso ='3' )
    ( bi_categ ='H' tipo_acceso ='4' ) ).

    "Delete possible entries; insert new entries
    delete from z349_acc_categ.
    insert z349_acc_categ from table @lt_acc_categ.

    if sy-subrc eq 0.
      out->write( |Acceso Categorias: { sy-dbcnt } registros insertados| ).
    endif.

******** z349_catego ********
    "fill internal table
    lt_catego = value #(
    ( bi_categ ='A' descripcion ='Filosofía, psicología')
    ( bi_categ ='B' descripcion ='Religión, mitología')
    ( bi_categ ='C' descripcion ='Ciencias sociales (derecho, política, economía)')
    ( bi_categ ='D' descripcion ='Ciencias naturales (matemáticas, astronomía, física)')
    ( bi_categ ='E' descripcion ='Ciencias aplicadas (tecnología, informática)')
    ( bi_categ ='F' descripcion ='Arte, música, deporte')
    ( bi_categ ='G' descripcion ='Lengua, poesía, teatro')
    ( bi_categ ='H' descripcion ='Geografía, historia') ).

    "Delete possible entries; insert new entries
    delete from z349_catego.
    insert z349_catego from table @lt_catego.

    if sy-subrc eq 0.
      out->write( |Categorias: { sy-dbcnt } registros insertados| ).
    endif.

******** z349_clientes ********
    "fill internal table
    lt_clientes = value #(
    ( id_cliente = '005638984K' tipo_acceso = '1' nombre = 'Andrew' apellidos = 'Roberts' email = 'STEPHANIE.ROBERTS@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )
    ( id_cliente = '049320909Q' tipo_acceso = '2' nombre = 'Natalie' apellidos = 'Clark' email = 'PETER.CLARK@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
    ( id_cliente = '049573865T' tipo_acceso = '1' nombre = 'Faith' apellidos = 'Black' email = 'DAN.BLACK@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )
    ( id_cliente = '203947278B' tipo_acceso = '3' nombre = 'Carolyn' apellidos = 'Wright' email = 'ADRIAN.WRIGHT@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
    ( id_cliente = '234234231T' tipo_acceso = '5' nombre = 'Penelope' apellidos = 'King' email = 'CAROLINE.KING@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
    ( id_cliente = '239482309W' tipo_acceso = '5' nombre = 'Julian' apellidos = 'Underwood' email = 'DAN.UNDERWOOD@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )
    ( id_cliente = '276594867J' tipo_acceso = '5' nombre = 'Olivia' apellidos = 'Allan' email = 'OWEN.ALLAN@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
    ( id_cliente = '283748858A' tipo_acceso = '5' nombre = 'Eric' apellidos = 'Knox' email = 'LILY.KNOX@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )
    ( id_cliente = '324726345S' tipo_acceso = '4' nombre = 'Vanessa' apellidos = 'Baker' email = 'SUE.BAKER@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
    ( id_cliente = '340958439D' tipo_acceso = '5' nombre = 'Michael' apellidos = 'Short' email = 'JASON.SHORT@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
    ( id_cliente = '345093450E' tipo_acceso = '3' nombre = 'Sue' apellidos = 'Sanderson' email = 'JOAN.SANDERSON@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
    ( id_cliente = '345838534R' tipo_acceso = '5' nombre = 'Lily' apellidos = 'Langdon' email = 'ANDREW.LANGDON@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
    ( id_cliente = '348947597P' tipo_acceso = '5' nombre = 'Lillian' apellidos = 'Davies' email = 'JULIAN.DAVIES@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
    ( id_cliente = '378458844M' tipo_acceso = '5' nombre = 'Joseph' apellidos = 'Smith' email = 'NATALIE.SMITH@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )
    ( id_cliente = '423586845G' tipo_acceso = '5' nombre = 'Stephanie' apellidos = 'Quinn' email = 'LILLIAN.QUINN@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
    ( id_cliente = '430958433A' tipo_acceso = '2' nombre = 'Joan' apellidos = 'Short' email = 'WENDY.SHORT@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )
    ( id_cliente = '439853453C' tipo_acceso = '5' nombre = 'Wendy' apellidos = 'Newman' email = 'JOSEPH.NEWMAN@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
    ( id_cliente = '453532543O' tipo_acceso = '1' nombre = 'Neil' apellidos = 'Wilson' email = 'VANESSA.WILSON@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
    ( id_cliente = '489632882D' tipo_acceso = '5' nombre = 'Sonia' apellidos = 'Welch' email = 'NEIL.WELCH@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
    ( id_cliente = '540867547H' tipo_acceso = '5' nombre = 'Adrian' apellidos = 'Young' email = 'PENELOPE.YOUNG@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' ) ).

    "Delete possible entries; insert new entries
    delete from z349_clientes.
    insert z349_clientes from table @lt_clientes.

    if sy-subrc eq 0.
      out->write( |Clientes: { sy-dbcnt } registros insertados| ).
    endif.

******** z349_clnts_lib
    lt_clnts_lib = value #(
    ( id_cliente = '005638984K' id_libro = '000001' )
    ( id_cliente = '005638984K' id_libro = '000020' )
    ( id_cliente = '005638984K' id_libro = '000021' )
    ( id_cliente = '049320909Q' id_libro = '000002' )
    ( id_cliente = '049573865T' id_libro = '000003' )
    ( id_cliente = '203947278B' id_libro = '000004' )
    ( id_cliente = '234234231T' id_libro = '000005' )
    ( id_cliente = '239482309W' id_libro = '000006' )
    ( id_cliente = '239482309W' id_libro = '000010' )
    ( id_cliente = '276594867J' id_libro = '000007' )
    ( id_cliente = '276594867J' id_libro = '000001' )
    ( id_cliente = '283748858A' id_libro = '000008' )
    ( id_cliente = '283748858A' id_libro = '000022' )
    ( id_cliente = '324726345S' id_libro = '000009' )
    ( id_cliente = '340958439D' id_libro = '000010' )
    ( id_cliente = '345093450E' id_libro = '000011' )
    ( id_cliente = '345838534R' id_libro = '000012' )
    ( id_cliente = '345838534R' id_libro = '000003' )
    ( id_cliente = '348947597P' id_libro = '000013' )
    ( id_cliente = '348947597P' id_libro = '000022' )
    ( id_cliente = '378458844M' id_libro = '000014' )
    ( id_cliente = '423586845G' id_libro = '000015' )
    ( id_cliente = '430958433A' id_libro = '000016' )
    ( id_cliente = '439853453C' id_libro = '000017' )
    ( id_cliente = '439853453C' id_libro = '000022' )
    ( id_cliente = '439853453C' id_libro = '000001' )
    ( id_cliente = '453532543O' id_libro = '000018' )
    ( id_cliente = '453532543O' id_libro = '000022' )
    ( id_cliente = '489632882D' id_libro = '000019' )
    ( id_cliente = '540867547H' id_libro = '000020' ) ).
    "Delete possible entries; insert new entries
    delete from z349_clnts_lib.
    insert z349_clnts_lib from table @lt_clnts_lib.


******** z349_libros ********
    "fill internal table
    lt_libros = value #(
    ( id_libro = '000001' bi_categ = 'A' titulo = 'Diccionario de los sentimientos' autor = 'CAGIGAL, Jose Maria' editorial = 'ANAGRAMA' idioma = 'S' paginas = 350 precio = '84.99' moneda = 'USD' formato = 'E' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000002' bi_categ = 'A' titulo = 'La selva del lenguaje' autor = 'Hoagland , M.' editorial = 'LATERZ A' idioma = 'S' paginas = 486 precio = 146 moneda = 'USD' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000027' bi_categ = 'C' titulo = 'Camino al éxito' autor = 'Hoagland , M.' editorial = 'LATERZ A' idioma = 'S' paginas = 486 precio = 146 moneda = 'USD' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000028' bi_categ = 'E' titulo = 'La historia de los Andes' autor = 'Hoagland , M.' editorial = 'LATERZ A' idioma = 'S' paginas = 486 precio = 146 moneda = 'USD' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000029' bi_categ = 'G' titulo = 'El Alquimista' autor = 'Hoagland , M.' editorial = 'LATERZ A' idioma = 'S' paginas = 486 precio = 146 moneda = 'USD' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000003' bi_categ = 'A' titulo = 'Ética Para Náufragos' autor = 'Vallejo- Nágera, Juan' editorial = 'LA SOCIAL' idioma = 'S' paginas = 236 precio = 35 moneda = 'USD' formato = 'E' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000004' bi_categ = 'B' titulo = 'La Sociedad Global' autor = 'Lane, Frank WW' editorial = 'JOAQUIN MORTIZ' idioma = 'S' paginas = 189 precio = '18.5' moneda = 'USD' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000005' bi_categ = 'B' titulo = 'Evangelio de San Pablo' autor = 'DICKSON, David' editorial = 'EDIBESA' idioma = 'S' paginas = 475 precio = '25.1' moneda = 'USD' formato = 'E' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000006' bi_categ = 'B' titulo = 'El Profeta: El jardin del Profeta' autor = 'Araujo, Joaquín' editorial = 'ABE BOOKS' idioma = 'S' paginas = 750 precio = '110.05' moneda = 'USD' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000007' bi_categ = 'B' titulo = 'Your Growing Child and Religion' autor = 'Luka Brajnovic' editorial = 'KELVIN BOOKS' idioma = 'E' paginas = 380 precio = '65.49' moneda = 'USD' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000008' bi_categ = 'B' titulo = 'Carta a la Familias' autor = 'Sastre, José Luis' editorial = 'PPC' idioma = 'S' paginas = 265 precio = '19.99' moneda = 'USD' formato = 'E' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000009' bi_categ = 'C' titulo = 'The language of science O' autor = 'MANIQUE, John' editorial = 'SALVAR EDICION' idioma = 'E' paginas = 125 precio = '14.99' moneda = 'USD' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000010' bi_categ = 'C' titulo = 'Energy in Evolution' autor = 'Meade, J. E.' editorial = 'ROW' idioma = 'E' paginas = 276 precio = '39.99' moneda = 'USD' formato = 'E' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000011' bi_categ = 'D' titulo = 'Analisis Numerico' autor = 'Timothy Sauer' editorial = 'Addison-wesley' idioma = 'E' paginas = 390 precio = '54.95' moneda = 'USD' formato = 'E' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000012' bi_categ = 'D' titulo = 'Algebra Matricial' autor = 'Jose manuel Gamboa' editorial = 'Anaya' idioma = 'S' paginas = 160 precio = '8.85' moneda = 'EUR' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000013' bi_categ = 'D' titulo = 'Matematicas Galdos' autor = 'VV.A.A.' editorial = 'Cultural' idioma = 'S' paginas = 220 precio = 30 moneda = 'EUR' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000014' bi_categ = 'E' titulo = 'Un pequeño pasa para un hombre' autor = 'Rafael Clemente' editorial = 'Cúpula' idioma = 'S' paginas = 328 precio = '18.52' moneda = 'EUR' formato = 'E' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000015' bi_categ = 'E' titulo = 'Mecánica de Materiales' autor = 'John T. DeWolf' editorial = 'MCGRAW-HILL' idioma = 'E' paginas = 635 precio = '62.51' moneda = 'USD' formato = 'E' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000016' bi_categ = 'E' titulo = 'Fundamentos de electricidad' autor = 'Jorge López Crespo' editorial = 'Thomson Paraninfo' idioma = 'S' paginas = 334 precio = '30.4' moneda = 'EUR' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000017' bi_categ = 'F' titulo = 'La popularización del deporte' autor = 'García Ferrando, Manuel' editorial = 'Centro de Investig.' idioma = 'S' paginas = 180 precio = 19 moneda = 'EUR' formato = 'E' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000018' bi_categ = 'F' titulo = 'Ideal democrático y bienestar personal' autor = 'Llopis Goig, Ramón' editorial = 'Centro de Investig.' idioma = 'S' paginas = 268 precio = '9.5' moneda = 'EUR' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000019' bi_categ = 'F' titulo = '14 canciones. El viaje del elefante' autor = 'Pastor, Luis' editorial = 'El Ángel Caído' idioma = 'S' paginas = 48 precio = 21 moneda = 'USD' formato = 'E' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000020' bi_categ = 'F' titulo = '4 notas de jazz' autor = 'Fernández Martínez, Gema' editorial = 'ECU' idioma = 'S' paginas = 250 precio = 10 moneda = 'USD' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000021' bi_categ = 'F' titulo = 'A mil besos. Canciones y poemas' autor = 'Cohen, Leonard' editorial = 'Visor Libros' idioma = 'E' paginas = 250 precio = 16 moneda = 'USD' formato = 'E' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000022' bi_categ = 'G' titulo = 'Nada tan amargo: Seis poetas Inglesas' autor = 'VV.A.A.' editorial = 'DESVELO EDICIONES' idioma = 'S' paginas = 208 precio = '17.1' moneda = 'EUR' formato = 'E' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000023' bi_categ = 'G' titulo = 'Poemas' autor = 'Maria Zambrano' editorial = 'S.L. EDICIONES' idioma = 'S' paginas = 212 precio = '15.1' moneda = 'USD' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000024' bi_categ = 'H' titulo = 'Atlas de los exploradores' autor = 'VV.A.A.' editorial = 'PLANETA' idioma = 'S' paginas = 320 precio = '34.15' moneda = 'USD' formato = 'E' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000025' bi_categ = 'H' titulo = 'El dominio mundial' autor = 'Pedro Baños' editorial = 'Ariel' idioma = 'S' paginas = 368 precio = '22.7' moneda = 'USD' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000026' bi_categ = 'H' titulo = 'Historia Latinoamericana 1700-2005' autor = 'Teresa Eggers Brass' editorial = 'EDITORIAL MAIPUE' idioma = 'S' paginas = 620 precio = '11.39' moneda = 'USD' formato = 'E' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000071' bi_categ = 'G' titulo = 'Los heraldos negros' autor = 'César Vallejo' editorial = 'Peisa' idioma = 'S' paginas = 128 precio = 23 moneda = 'USD' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )
    ( id_libro = '000072' bi_categ = 'G' titulo = 'Aves sin nido' autor = 'Clorinda Matto de Turner' editorial = 'Visor Libros' idioma = 'S' paginas = 356 precio = '34.15' moneda = 'USD' formato = 'P' url =
    'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' ) ).
    "Delete possible entries; insert new entries
    delete from z349_libros.
    insert z349_libros from table @lt_libros.

    if sy-subrc eq 0.
      out->write( |Libros: { sy-dbcnt } registros insertados| ).
    endif.

    "Check result in console
    out->write( 'DONE!' ).



  endmethod.

endclass.
