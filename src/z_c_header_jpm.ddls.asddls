@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PROYECCIÓN HEADER'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity Z_C_HEADER_JPM
  provider contract transactional_query
  as projection on Z_I_HEADER_JPM
{
  key id,
      email,
      fname,
      lname,
      cotry,
      creat,
      deliv,
      ordes,
      imaur,
      /* Associations */
      _Items : redirected to composition child Z_C_ITEMS_JPM
}
