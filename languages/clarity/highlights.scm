; Comments
(comment) @comment

; Punctuation
[
  "("
  ")"
  "{"
  "}"
  "<"
  ">"
] @punctuation.bracket

[
  ","
] @punctuation.delimiter

; Literals
(bool_lit) @boolean

[
  (int_lit)
  (uint_lit)
] @number

[
  (ascii_string_lit)
  (utf8_string_lit)
] @string

[
  (buffer_lit)
  (standard_principal_lit)
  (contract_principal_lit)
] @string.special

; Types
[
  (native_type)
  (trait_type)
] @type

; Keywords
[
  "some"
  "ok"
  "err"
  (list_lit_token)
] @keyword

[
  "+"
  "-"
  "*"
  "/"
  "mod"
  "pow"
  "<"
  "<="
  ">"
  ">="
  "and"
  "or"
  "xor"
] @keyword.operator

; Functions
(function_signature (identifier) @function)
(function_signature_for_trait (identifier) @function)
(basic_native_form operator: (native_identifier) @function)
(contract_function_call operator: (identifier) @function)

[
  "let"
  "impl-trait"
  "use-trait"
  "define-trait"
  "define-read-only"
  "define-private"
  "define-public"
  "define-data-var"
  "define-fungible-token"
  "define-non-fungible-token"
  "define-constant"
  "define-map"
] @function

; Variables and properties
(global) @variable.special

(tuple_lit key: (identifier) @property)
(tuple_type key: (identifier) @property)
(tuple_type_for_trait key: (identifier) @property)
