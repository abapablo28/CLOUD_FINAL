@AbapCatalog.sqlViewName: 'Z_I_HEADER'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DEFINICION INTERFAZ HEADER'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define root view Z_I_HEADER_JPM as select from zheader_jpmv as Header

composition [0..*] of Z_I_ITEMS_JPM as _Items 


{
    key id ,
    email ,
    fname,
    lname ,
    cotry ,
    creat,
    deliv ,
    ordes ,
     
imaur,
    _Items
}
