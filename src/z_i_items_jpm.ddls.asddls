@AbapCatalog.sqlViewName: 'Z_I_ITEMS'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DEFINICION INTERFAZ ITEMS'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define  view  Z_I_ITEMS_JPM as select from zitems_jpmv as _Items

association to parent Z_I_HEADER_JPM as _Header on $projection.id_header = _Header.id
//association [0..1] to zheader_jpmv as _Header on $projection.Id = _Header.id


{
             
 key id,      
 key id_header,
 name  ,      
 descr  ,     
 relea ,      
 disco ,      
 price ,      
 @Semantics.quantity.unitOfMeasure : 'unito'
 heih  ,      
  @Semantics.quantity.unitOfMeasure : 'unito'
 width ,      
 depth ,      
 quant ,      
 unito ,     
_Header
}
