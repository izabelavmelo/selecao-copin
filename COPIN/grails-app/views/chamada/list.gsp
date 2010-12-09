
<%@ page import="copin.Chamada" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'chamada.label', default: 'Chamada')}" />
        <title><g:message code="Lista de chamadas" args="[entityName]" /></title>

		<style type="text/css" media="screen">

			
			
			th a:link, th a:visited, th a:hover {
				 font-size: 14px;
			}
			
			
			td, th {
				font-size: 14px;

			}
			
			.buttons input {
    			background: #fff;
    			border: 20px #ccc;
    			color: #333;
    			cursor: pointer;
    			font-size: 12px;
    			font-weight: bold;
    			margin-left: 3px;
    			overflow: visible;
    			padding: 3px 6px;
			}

			.buttons input.visualizar {
    			background: transparent url(../images/skin/visualizar1.png) 5px 50% no-repeat;
    
    			padding-left: 28px;
			}

        	.buttons input.criarAvaliador {
 				background: transparent url(../images/skin/addAvaliador2.png) 5px 50% no-repeat;
    			padding-left: 28px;
    		}
    		
    		.buttons input.mostrarAvaliadores {
    		background: transparent url(../images/skin/mostrarAvaliadores.png) 5px 50% no-repeat;
    		padding-left: 28px;
			}

			.buttons input.listaInscricao {
    		background: transparent url(../images/skin/listaInscricao2.png) 5px 50% no-repeat;
    		padding-left: 28px;
			}
		</style>


    	<div align="right">
        
        
        	<g:form class="buttons" controller="usuario" method="post">
        			<g:hiddenField name="id" value="${session.usuario.id}" />
					<span class="button">Ola, ${session.getAt("usuario").nome}!<g:actionSubmit controller="usuario" class="logout" action="logout" value="Logout" /></span></br>
        	</g:form>
        
        </div>  

    </head>
    <body>
        <div class="nav">
            <g:if test="${session.usuario.ehAdministrador}">
            	<span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfilAdministrador')}"><g:message code="default.home.label"/></a></span>
        		<span class="menuButton"><g:link class="create" action="create"><g:message code="Nova chamada" args="[entityName]" /></g:link></span>
      
            </g:if>
            <g:else>
            	<span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfil')}"><g:message code="default.home.label"/></a></span>
            </g:else>
          
         </div>
        <div class="body">
            <h1><g:message code="Lista de chamadas" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'chamada.id.label', default: 'O que fazer?')}" />
                        
                    	    <g:sortableColumn property="tituloDaChamada" title="${message(code: 'chamada.tituloDaChamada.label', default: 'Titulo da Chamada')}" />
                    
                     		<g:sortableColumn property="tipoDeChamada" title="${message(code: 'chamada.tipoDeChamada.label', default: 'Tipo de Chamada')}" />
                        
                       		<g:sortableColumn property="vagasDisponiveis" title="${message(code: 'chamada.vagasDisponiveis.label', default: 'Vagas disponiveis')}" />
                           
                        	<g:sortableColumn property="dataInicialInscricoes" title="${message(code: 'chamada.dataInicialInscricoes.label', default: 'Data inicial')}" />
                        
                            <g:sortableColumn property="dataFinalInscricoes" title="${message(code: 'chamada.dataFinalInscricoes.label', default: 'Data final')}" />
                        
              				
                           
                           
                                
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${chamadaInstanceList}" status="i" var="chamadaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                        <td>
      
                        	<g:if test="${session.usuario.ehAdministrador}">
                        	
                        		<g:form class="buttons" align="left" controller="chamada">
                   					<g:hiddenField name="id" value="${chamadaInstance?.id}" />
            						<span class="button"><g:actionSubmit class="visualizar" action="show" value="Visualizar" ></g:actionSubmit></span></br>
      
            	    			</g:form>
      
      							<g:form class="buttons" align="left" controller="atribuicao">
            		    			<g:hiddenField name="id" value="${chamadaInstance?.id}" />
            		        		<span class="button"><g:actionSubmit class="criarAvaliador" action="create" value="Definir avaliador"></g:actionSubmit></span></br>
									<span class="button"><g:actionSubmit class="mostrarAvaliadores" action="list" value="Mostrar avaliadores"></g:actionSubmit></span></br>
			
            		    		</g:form>
            		    	                  
        	    	    		<g:form class="buttons" align="left" controller="inscricao">
        							<g:hiddenField name="id" value="${chamadaInstance?.id}" />
            		        		<span class="button"><g:actionSubmit class="listaInscricao" action="listaDeChamada" value="Lista de inscricoes"></g:actionSubmit></span></br>
			
            		    		</g:form>
            		    		
                
                       		</g:if>
                        	<g:else>
                        		<g:if test="${session.usuario.ehAvaliador }">
                        		
                        		</g:if>
                        		<g:else>
                        			<g:form class="buttons" align="left" controller="chamada">
                   					<g:hiddenField name="id" value="${chamadaInstance?.id}" />
            						<span class="button"><g:actionSubmit class="visualizar" action="show" value="Visualizar" ></g:actionSubmit></span></br>
      
            	    				</g:form>
                        			
            	            		<g:form class="buttons" align="left" controller="inscricao">
            						           					
            		    		    	<g:if test="${Calendar.getInstance().after(chamadaInstance.dataInicialInscricoes) && Calendar.getInstance().before(chamadaInstance.dataFinalInscricoes)}">
            	    			    		<g:hiddenField name="id" value="${chamadaInstance?.id}" />
            	        					<span class="button"><g:actionSubmit class="mostrarAvaliadores" action="create" value="Inscricao"></g:actionSubmit></span></br>
					        	    	</g:if>
					            		<g:else>
					            			<span class="button"><g:actionSubmit disabled="true" class="mostrarAvaliadores" action="create" value="Inscricao"></g:actionSubmit></span></br>
					            		</g:else>
            	    				</g:form>        
            
                        		</g:else>
                        	</g:else>   	    
            
            	    	</td>
            	    	
            	    	<g:if test="${session.usuario.ehAvaliador }">
      						<g:set var="ehParaAvaliar" value="${false}"/>
      						
      						<g:each in="${atribuicoesList}" status="j" var="atribuicaoInstance">
                        		<tr class="${(j % 2) == 0 ? 'odd' : 'even'}">
                        			<g:if test="${atribuicaoInstance?.chamada?.id == chamadaInstance.id}">
                        				<g:set var="ehParaAvaliar" value="${true}"/>
      								
                        			</g:if>
                        		
                        		</tr>
                        	</g:each>
                        	
                        	<g:if test="${ehParaAvaliar }">
      		                  	<td>
      		                  	
      		                  	<g:form class="buttons" align="left" controller="chamada">
                   					<g:hiddenField name="id" value="${chamadaInstance?.id}" />
            						<span class="button"><g:actionSubmit class="visualizar" action="show" value="Visualizar" ></g:actionSubmit></span></br>
            	    			</g:form>
            	    			
            	    			<g:form class="buttons" align="left" controller="inscricao">
        							<g:hiddenField name="id" value="${chamadaInstance?.id}" />
            		        		<span class="button"><g:actionSubmit class="listaInscricao" action="listaDeChamada" value="Lista de inscricoes"></g:actionSubmit></span></br>
			
            		    		</g:form>
            	    			
            	    			
            	    			
            	    			</td>
      
      							<td>${fieldValue(bean: chamadaInstance, field: "tituloDaChamada")}</td>
                        
                        	    <td>${fieldValue(bean: chamadaInstance, field: "tipoDeChamada")}</td>
      	
        	                    <td>${fieldValue(bean: chamadaInstance, field: "vagasDisponiveis")}</td>
            	            
                	        	<td><g:formatDate date="${chamadaInstance.dataInicialInscricoes}" /></td>
                        
                    	        <td><g:formatDate date="${chamadaInstance.dataFinalInscricoes}" /></td>
                        	
                        	</g:if>
      
      
            	    	
            	    	</g:if>
            	    	<g:else>
            	            <td>${fieldValue(bean: chamadaInstance, field: "tituloDaChamada")}</td>
                        
                            <td>${fieldValue(bean: chamadaInstance, field: "tipoDeChamada")}</td>
      
                            <td>${fieldValue(bean: chamadaInstance, field: "vagasDisponiveis")}</td>
                        
                        	<td><g:formatDate date="${chamadaInstance.dataInicialInscricoes}" /></td>
                        
                            <td><g:formatDate date="${chamadaInstance.dataFinalInscricoes}" /></td>
      	
            	    	</g:else>
            	    
                                      
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${chamadaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
