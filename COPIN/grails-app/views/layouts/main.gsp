<html>
    <head>
        <title><g:layoutTitle default="Selecao COPIN" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        
        <g:layoutHead />
        <g:javascript library="application" />
        
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="grailsLogo" align="center"><a href="http://localhost:8080/COPIN/"><img src="${resource(dir:'images',file:'logonovo.png')}" width="150" height="70" alt="Site do projeto" border="0" align=center/></a></div>
       
        <g:layoutBody />
    </body>
</html>