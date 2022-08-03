" vim-surround sirve para envolver texto dentro de otro.
" Ejemplos de uso
" Presionar: *cs"'* cambia " por '
" Inicio -> "Hello world!"
" Salida -> 'Hello world!'
" 
" Ahora presionamos cs'<q> y cambiamos las comillas por un parrafo.
"     <q>Hello world!</q>
" 
" cambiar etiqueta <q> por comillas. Presionar cst" y obtenemos:
" Salida -> "Hello world!"
" 
" Remover las comillas, presionar: ds".
" Salida -> Hello world!
" 
" Envolver "Hello" entre corchetes, presionar ysiw]
" Salida -> [Hello] world!
" 
" Let's make that braces and add some space (use } instead of { for no space): cs]{
" 
" { Hello } world!
" Now wrap the entire line in parentheses with yssb or yss).
" 
" ({ Hello } world!)
" Revert to the original text: ds{ds)
" 
" Hello world!
" Emphasize hello: ysiw<em>
" 
" <em>Hello</em> world!
" Finally, let's try out visual mode. Press a capital V (for linewise visual mode) followed by S<p class="important">.
" 
" <p class="important">
"   <em>Hello</em> world!
" </p>
" This plugin is very powerful for HTML and XML editing, a niche which currently seems underfilled in Vim land. (As opposed to HTML/XML inserting, for which many plugins are available). Adding, changing, and removing pairs of tags simultaneously is a breeze.
" 
" The . command will work with ds, cs, and yss if you install repeat.vim.
