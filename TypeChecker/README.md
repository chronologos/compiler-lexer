# README
## Yo noid!
Our typechecker uses purely functional programming to achieve mutually recursive types. We achieved this by modifying `Types.sml` so that RECORD and ARRAY types now hold a `get_fields` function. When this function is called, the fields of the ARRAY / RECORD type are returned. This function handles mutual recursion because it considers both the tenv and the entire typedec when finding the field type.