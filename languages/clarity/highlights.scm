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
; Use different captures for function definitions, function calls, and built-in functions
(function_signature (identifier) @constructor)
(function_signature_for_trait (identifier) @constructor)

(contract_function_call operator: (identifier) @function)

(basic_native_form operator: (native_identifier) @label)
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
] @label

; Variables
(function_parameter) @variable
(global) @variable.special
