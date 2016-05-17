<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {css}
        vars.less
        style.less
    {/css}
    {js}
        FX_JQUERY_PATH as jquery
        /module/Floxim/Ui/Js/Floxim.js
    {/js}
</head>
<body fx:b="body">
    <div fx:b="layout" fx:container="layout">
        {default $use_content_area = true /}
        <header 
            fx:e="section header" 
            fx:area="header" 
            fx:area-name="Шапка" 
            fx:area-scope="nav"
            fx:container="layout_header">
            
        </header>
        <section 
            fx:area="content" 
            fx:area-name="Контент"
            fx:size="wide,high"
            fx:if="$use_content_area"
            fx:e="section content"
            fx:area-scope="content"
            fx:container="layout_content">

        </section>
        <footer 
            fx:e="section footer"
            fx:container="layout_footer"
            fx:area="footer" 
            fx:area-name="Подвал" 
            fx:area-scope="nav">
            
        </footer>
    </div>
    {css}
        style.less
    {/css}
</body>
</html>