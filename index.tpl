<!DOCTYPE html>
<html class="fx-root">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {css}
        vars.less
        style.less
    {/css}
    {js}
        FX_JQUERY_PATH
        Floxim.js from floxim.ui.js
    {/js}
</head>
<body fx:b="body">
    <div fx:b="layout" fx:container="layout" fx:styled-inline="id:layout">
        {default $use_content_area = true /}
        <header 
            fx:e="section header" 
            fx:area="header" 
            fx:area-name="Шапка" 
            fx:area-scope="nav"
            fx:b="section"
            fx:styled-inline="id:header">
            
        </header>
        <section 
            fx:area="content" 
            fx:area-name="Контент"
            fx:size="wide,high"
            fx:if="$use_content_area"
            fx:e="section content"
            fx:area-scope="content"
            fx:b="section"
            fx:styled-inline="id:content">

        </section>
        <footer 
            fx:e="section footer"
            fx:area="footer" 
            fx:area-name="Подвал" 
            fx:area-scope="nav"
            fx:b="section"
            fx:styled-inline="id:footer">
            
        </footer>
    </div>
    {css}
        style.less
    {/css}
</body>
</html>