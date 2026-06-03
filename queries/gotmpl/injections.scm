; Injeta YAML nas partes de texto dos arquivos gotmpl (ex: .yaml.gotmpl)
; Os blocos {{ }} são coloridos pelo parser gotmpl; o restante como YAML.
((text) @injection.content
 (#set! injection.language "yaml")
 (#set! injection.combined))
