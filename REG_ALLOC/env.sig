signature ENV =
sig
    type access
    (*type ty*)
    datatype enventry = VarEntry of {access: Translate.access, ty: Types.ty}
                      | FunEntry of {level: Translate.level,
                                     label: Temp.label,
                                     formals: Types.ty list, result: Types.ty}
val base_tenv : Types.ty Symbol.table
val base_venv : enventry Symbol.table
end
