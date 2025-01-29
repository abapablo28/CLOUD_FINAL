@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PROYECCIÓN ITEMS'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity Z_C_ITEMS_JPM as projection on Z_I_ITEMS_JPM
{
    key id,
    key id_header,
    name,
    descr,
    relea,
    disco,
    price,
    @Semantics.quantity.unitOfMeasure : 'unito'
    heih,
    @Semantics.quantity.unitOfMeasure : 'unito'
    width,
    depth,
    quant,
    unito,
    /* Associations */
    _Header: redirected to parent Z_C_HEADER_JPM
}
