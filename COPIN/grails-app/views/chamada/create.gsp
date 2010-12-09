

<%@ page import="copin.Chamada" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'chamada.label', default: 'Chamada')}" />
        <title><g:message code="Criar chamada" args="[entityName]" /></title>

		<style type="text/css" media="screen">
    	
    		table {
    			border: 3px solid #ccc;
    			width: 50%;
			}
		
    	</style>
		
    	<div align="right">
        
        
        	<g:form class="buttons" controller="usuario" method="post">
        			<g:hiddenField name="id" value="${session.usuario.id}" />
					<span class="button">Ola, ${session.getAt("usuario").nome}!<g:actionSubmit controller="usuario" class="logout" action="logout" value="Logout" /></span></br>
        	</g:form>
        
        </div>  
    
    	<g:if test="${session.usuario}">
		
			<g:if test="${!session.usuario.ehAdministrador}">
				<g:if test="${session.usuario.ehAvaliador}">
					<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfilAvaliador')}"/>
				</g:if>
				
				<g:else>
					<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfil')}"/>
				</g:else>
			</g:if>
			
		</g:if>
		<g:else>
			<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'index')}"/>
		</g:else>
    
    </head>

    <body>
    	<div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfilAdministrador')}"><g:message code="default.home.label"/></a></span>
        </div>
        <div class="body">
           <h1><g:message code="Criar chamada"/></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${chamadaInstance}">
            <div class="errors">
                <g:renderErrors bean="${chamadaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" name="criarChamada" >
                <div class="dialog">
                    <table>
                        <tbody>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tituloDaChamada"><g:message code="chamada.tituloDaChamada.label" default="Titulo da chamada:" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'tituloDaChamada', 'errors')}">
                                    <g:textField name="tituloDaChamada" value="${chamadaInstance?.tituloDaChamada}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tipoDeChamada"><g:message code="chamada.tipoDeChamada.label" default="Tipo de chamada:" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'tipoDeChamada', 'errors')}">
                                    <g:textField name="tipoDeChamada" value="${chamadaInstance?.tipoDeChamada}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dataInicialInscricoes"><g:message code="chamada.dataInicialInscricoes.label" default="Data inicial:" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'dataInicialInscricoes', 'errors')}">
                                    <g:datePicker name="dataInicialInscricoes" precision="day" value="${chamadaInstance?.dataInicialInscricoes}"  />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dataFinalInscricoes"><g:message code="chamada.dataFinalInscricoes.label" default="Data final:" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'dataFinalInscricoes', 'errors')}">
                                    <g:datePicker name="dataFinalInscricoes" precision="day" value="${chamadaInstance?.dataFinalInscricoes}"  />
                                </td>
                            </tr>
                            
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="texto"><g:message code="chamada.texto.label" default="Texto:" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'texto', 'errors')}">
                                    <g:textArea name="texto" value="${chamadaInstance?.texto}" rows="7" cols="60"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="vagasDisponiveis"><g:message code="chamada.vagasDisponiveis.label" default="Vagas disponiveis:" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'vagasDisponiveis', 'errors')}">
                                    <g:select from="${0..1000}" name="vagasDisponiveis" value="${chamadaInstance?.vagasDisponiveis}"/>
                                </td>
                            </tr>
                            
                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="formula"><g:message code="chamada.formula.label" default="Formula:" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chamadaInstance, field: 'formula', 'errors')}">
                                    <g:textField name="formula" value="${chamadaInstance?.formula}"/>
                                </td>
                            </tr>
                            
                            <table>
        
                            <tr class="prop">
                            	 <td valign="top" class="value">
                                    <h1><g:message code="ATENCAO!"/></h1>
                                    <p>Use os criterios abaixo para definir a formula.</p>
                                	<ul>
                                		<li>N1 = Media escolar da graduacao (escala de 0 a 10);</li>
                                		<li>N2 = Avaliacao ENADE (Media Geral (conc)) do curso de graduacao (=35 para curso nao avaliado);</li>
                               			<li>N3 = Media escolar da pos-graduacao (escala de 0 a 10);</li>
                               			<li>N4 = Avaliacao CAPES do curso de pos-graduacao (1 a 7) (=3 para curso nao avaliado);</li>
										<li>N5 = Indice de artigos completos;</li>
										<li>N6 = Semestres concluidos como pesquisador com mestrado em projetos de pesquisa institucionais;</li>
										<li>N7 = Semestres concluidos de monitoria, de ensino (segundo grau, tecnico ou nivel superior) ou de experiencia profissional na area;</li>
										<li>N8 = Semestres concluidos de IC;</li>
										<li>N9 = Semestres concluidos de participacao de grupo PET;</li>
										<li>N10 = 1,0, se possui especializacao latu-sensu;</li>
										<li>N11 = 5,0, se possui mestrado em Ciencia da Computacao ou em areas afins definidas no Regulamento do Programa;</li>
										<li>N12 = Nota no POSCOMP;</li>
										<li>N13 = Media do POSCOMP no ano referente a N12;</li>
										<li>N14 = Media de pontuacao nas cartas de recomendacao.</li>		
                               		</ul>
                                </td>
                                
                            </tr>
                            </table>
                   
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
