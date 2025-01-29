CLASS zcl_datos_jpm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_datos_jpm IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA:
        ltd_header TYPE STANDARD TABLE OF zheader_jpmv,
        ltd_items TYPE STANDARD TABLE OF  zitems_jpmv.

DELETE FROM zheader_jpmv.

    ltd_header
        = VALUE #(

                ( id        = '0000005001'
    email     = 'juan@example.com'
    fname     = 'Juan'
    lname     = 'Martínez'
    cotry     = 'Mexico'
    creat     = '20240228'
    deliv     = '20240310'
    ordes     = '1'
    imaur     = 'https://media.licdn.com/dms/image/v2/C4E0BAQGRPtFZleSPoQ/company-logo_200_200/company-logo_200_200/0/1631376912398?e=2147483647&v=beta&t=f0lY8PC-ex9m0gH1ZNfndYh-vIgl--nSt4j143KwtUc'

    )

  ( id        = '0000005002'
    email     = 'maria@example.com'
    fname     = 'Maria'
    lname     = 'González'
    cotry     = 'Spain'
    creat     = '20240228'
    deliv     = '20240312'
    ordes     = '2'
    imaur     = 'https://silverconsulting.com.co/wp-content/uploads/2020/10/logo_Silver_Consulting_slogan-400x82.png'
     )

).




    IF lines( ltd_header ) > 0.

      INSERT zheader_jpmv FROM TABLE @ltd_header.

    ENDIF.




DELETE FROM zitems_jpmv.

  " Datos quemados para la tabla LTD_ITEMS usando VALUE
 ltd_items = VALUE #(
    " Primer registro
    ( client = sy-mandt   id = '0000005005' id_header = '0000005001'  name = 'Product A'  descr = 'Description A'  relea = '20230101'
      disco = '20240101'  price = '100.00'  heih = '10.00'  width = '5.00'  depth = '2.00'
      quant = 100  unito = 'EA' )
      ).



 IF lines( ltd_items ) > 0.

      INSERT zitems_jpmv FROM TABLE @ltd_items.

    ENDIF.





  ENDMETHOD.

ENDCLASS.
