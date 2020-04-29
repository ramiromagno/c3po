badge <- function(id)
{

  name <-
    switch(
      id,
      'variable' = 'Variable',
      'struct' = 'Struct',
      'enum' = 'Enum',
      'mobj' = 'Macro object-like',
      'mfn' = 'Macro function-like',
      'typedef-dtype' = 'Typedef predefined data type',
      'typedef-str' = 'Typedef struct',
      'typedef-strp' = 'Typedef struct pointer',
      'typedef-pointer' = 'Typedef pointer',
      'typedef-array' = 'Typedef array',
      'typedef-enum' = 'Typedef enum',
      'typedef-fnp' = 'Typedef function pointer',
      'fnp' = 'Function, pure',
      'fni' = 'Function, impure',
      'c2r' = 'C to R',
      'r2c' = 'R to C',
      'prot' = 'Needs PROTECT()',
      'USE_RINTERNALS' = 'Requires USE_RINTERNALS',
      'cheader' = 'C header file',
      stop(sprintf("Unknown badge `%s`", id))
    )


  img <- sprintf(
    "\\out{<a href='https://rmagno.eu/c3po/entities'><img src='figures/%s.svg' alt='%s'></a>}", id, name)

  sprintf("\\ifelse{html}{%s}{\\strong{%s}}", img, name)
}
