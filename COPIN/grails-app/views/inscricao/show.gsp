
<%@ page import="copin.Inscricao" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>

    	<div align="right">
        
        
        	<g:form class="buttons" controller="usuario" method="post">
        			<g:hiddenField name="id" value="${usuarioInstance?.id}" />
					<span class="button">Ola, ${session.getAt("usuario").nome}!<g:actionSubmit controller="usuario" class="logout" action="logout" value="Logout" /></span></br>
        	</g:form>
        
        </div>  

		<g:if test="${session.usuario}">
		
			<g:if test="${session.usuario.ehAvaliador}">
				<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfilAvaliador')}"/>
			</g:if>
				
			<g:if test="${session.usuario.ehAdministrador}">
				<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfilAdministrador')}"/>
			</g:if>
			
		</g:if>
		
		<g:else>
			<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'index')}"/>
		</g:else>
    
    </head>
    <body>
        <div class="nav">
         <g:if test="${session.usuario.ehAdministrador}">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfilAdministrador')}"><g:message code="default.home.label"/></a></span>
        	<span class="menuButton"><a class="list" href="${createLink(uri: '/chamada/index')}"><g:message code="Lista de Chamadas"/></a></span>
        
         </g:if>
         <g:else>
            <span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfil')}"><g:message code="default.home.label"/></a></span>
        	<span class="menuButton"><a class="list" href="${createLink(uri: '/chamada/index')}"><g:message code="Lista de Chamadas"/></a></span>
        	<span class="menuButton"><a class="list" href="${createLink(uri: '/inscricao/list')}"><g:message code="Minhas inscricoes"/></a></span>
		</g:else>        
        </div>
        <div class="body">
            <h2 align="center" size="1"><g:message code="Minha inscricao" args="[entityName]" /></h2>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
            
             <table>
                        <tbody>
                        
                            <h1><g:message code="Usuario"/></h1>
                                  
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="inscricao.label" default="Usuario" />
                                </td>
                                <td valign="top" class="value">${usuarioInstance}
                               </td>
                            </tr>
						</tbody>
					</table>
            
                    <table>
                        <tbody>
                        
                            <h1><g:message code="Chamada correspondente"/></h1>
                                              
							<tr class="prop">
                                    <td valign="top" class="name"><g:message code="inscricao.chamada.tituloDaChamada.label" default="Chamada" /></td>
                                <td valign="top" class="value"> ${fieldValue(bean: inscricaoInstance.chamada, field: 'tituloDaChamada', 'errors')}</td>
                            </tr>
  
						</tbody>
					</table>
            
                <table>
                    <tbody>
                        
                        <h1><g:message code="Dados basicos"/></h1>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "id")}</td>
                            
                        </tr>
                        	
                            <tr class="prop">
                            	<td valign="top" class="name"><g:message code="inscricao.cargoFuncoes.label" default="Cargo e funcoes atuais" /></td>
                            
                            	<td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "cargoFuncoes")}</td>
                            
                       		</tr>
                            
                            <tr class="prop">
                            	<td valign="top" class="name"><g:message code="inscricao.empresaInstituicao.label" default="Instituicao ou empresa atual" /></td>
                            
                            	<td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "empresaInstituicao")}</td>
                            
                        	</tr>
                            
                           <tr class="prop">
                            	<td valign="top" class="name"><g:message code="inscricao.primeiraOpcaoProjeto.label" default="Primeira opcao de projeto" /></td>
                            
                            	<td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "primeiraOpcaoProjeto")}</td>
                            
                        	</tr>
                        
                        	<tr class="prop">
                          	  	<td valign="top" class="name"><g:message code="inscricao.segundaOpcaoProjeto.label" default="Segunda opcao de projeto" /></td>
                            
                            	<td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "segundaOpcaoProjeto")}</td>
                            
                        	</tr>
                    
                        	<tr class="prop">
                            	<td valign="top" class="name"><g:message code="inscricao.terceiraOpcaoProjeto.label" default="Terceira opcao de projeto" /></td>
                            
                            	<td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "terceiraOpcaoProjeto")}</td>
                            
                        	</tr>
                    
                        	<tr class="prop">
                            	<td valign="top" class="name"><g:message code="inscricao.quartaOpcaoProjeto.label" default="Quarta opcao de projeto" /></td>
                            
                            	<td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "quartaOpcaoProjeto")}</td>
                            
                        	</tr>
                     
                    		<tr class="prop">
                            	<td valign="top" class="name"><g:message code="inscricao.cursoInscricao.label" default="Curso para o qual se inscreve" /></td>
                            
                            	<td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "cursoInscricao")}</td>
                            
                        	</tr>
                     	</tbody>
                     </table>
                     
                     <table>
                     	<tbody>
                     		</br>
                     		<h1><g:message code="Formacao universitaria (graduacao)"/></h1>
                     		
                     		<tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.instituicao.label" default="Instituicao" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "instituicao")}</td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.curso.label" default="Curso" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "curso")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.enade.label" default="Avaliacao ENADE do curso" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "enade")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.anoDeConclusao.label" default="Ano de conclusao do curso" /></td>
                            
                            <td valign="top" class="value"><g:formatDate format="yyyy" date="${inscricaoInstance?.anoDeConclusao}" /></td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.mediaEscolar.label" default="Media escolar (0 a 10)" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "mediaEscolar")}</td>
                            
                        </tr>
                    </tbody>
                     </table>
                     
                     <table>
                     	<tbody>
                     		</br>
                     		<h1><g:message code="Formacao universitaria (mestrado)"/></h1>
                    
                    <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.instituicaoMestrado.label" default="Instituicao" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "instituicaoMestrado")}</td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.cursoMestrado.label" default="Curso" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "cursoMestrado")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.enadeMestrado.label" default="Avaliacao CAPES do curso" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "enadeMestrado")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.anoDeConclusaoMestrado.label" default="Ano de conclusao do mestrado" /></td>
                            
                            <td valign="top" class="value"><g:formatDate format="yyyy" date="${inscricaoInstance?.anoDeConclusaoMestrado}" /></td>
                            
                        </tr>
                    
                    	<tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.mediaEscolarMestrado.label" default="Media escolar (0 a 10)" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "mediaEscolarMestrado")}</td>
                            
                        </tr>
                        
                         </tbody>
                     </table>
                     
                     <table>
                     	<tbody>
                     		</br>
                     		<h1><g:message code="Dados adicionais"/></h1>
                     		
                     		<tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.vinculoEmpregaticio.label" default="Possui vinculo empregaticio?" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "vinculoEmpregaticio")}</td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.nomeEmpresa.label" default="Nome da empresa" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "nomeEmpresa")}</td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.solicitaBolsa.label" default="Solicita bolsa?" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "solicitaBolsa")}</td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.vinculoPICD.label" default="Vinculo PICD?" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "vinculoPICD")}</td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.universidadePICD.label" default="Universidade do PICD" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "universidadePICD")}</td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.sabeProgramar.label" default="Sabe programar?" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "sabeProgramar")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.linguagens.label" default="Em que linguagens?" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "linguagens")}</td>
                            
                        </tr>
                    	<tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.numeroInscricaoPoscomp.label" default="Numero de inscricao do POSCOMP" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "numeroInscricaoPoscomp")}</td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.resultadoPoscomp.label" default="Resultado do POSCOMP" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "resultadoPoscomp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.anoPoscomp.label" default="Ano de realizacao do POSCOMP?" /></td>
                            
                            <td valign="top" class="value"><g:formatDate format="yyyy" date="${inscricaoInstance?.anoPoscomp}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.estudoTempoIntegral.label" default="Deseja estudar em tempo integral?" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "estudoTempoIntegral")}</td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.alunoEspecial.label" default="Ja cursou disciplinas do programa como aluno especial?" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "alunoEspecial")}</td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.quantasDisciplinasEspeciais.label" default="Quantas disciplinas?" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "quantasDisciplinasEspeciais")}</td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.mediaDisciplinasEspeciais.label" default="Qual media obteve?" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "mediaDisciplinasEspeciais")}</td>
                            
                        </tr>
                        </tbody>
                     </table>
                     
                     <table>
                     	<tbody>
                     		</br>
                     		<h1><g:message code="Publicacoes (indicar o numero de publicacoes de cada tipo)"/></h1>
                    
                    	<tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.qualisInternacional.label" default="Qualis (veiculo internacional)" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "qualisInternacional")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.qualisNacional.label" default="Qualis (veiculo nacional)" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "qualisNacional")}</td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.outrasInternacionais.label" default="Outras publicacoes internacionais" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "outrasInternacionais")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.outrasNacionais.label" default="Outras publicacoes nacionais" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "outrasNacionais")}</td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.locaisERegionais.label" default="Outras publicacoes locais e regionais" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "locaisERegionais")}</td>
                            
                        </tr>
                        
                        </tbody>
                     </table>
                     
                     <table>
                     	<tbody>
                     		</br>
                     		<h1><g:message code="Outras atividades academicas"/></h1>
                    
                    	<tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.semestresPesquisadorMestrado.label" default="Semestres concluidos como pesquisador em tempo integral com nivel de mestrado (com bolsa)" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "semestresPesquisadorMestrado")}</td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.semestresMonitoria.label" default="Semestres concluidos de monitoria" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "semestresMonitoria")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.semestresEnsino.label" default="Semestres concluidos realizando atividades de ensino" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "semestresEnsino")}</td>
                            
                        </tr>
                                       
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.semestresAtuandoNaArea.label" default="Semestres concluidos atuando profissionalmente na area" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "semestresAtuandoNaArea")}</td>
                            
                        </tr>
                    
                    	<tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.semestresPibicIti.label" default="Semestres concluidos realizando PIBIC ou projeto de pesquisa com bolsa ITI" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "semestresPibicIti")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.especializacaoLatuSensu.label" default="Especializacao latu-sensu" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "especializacaoLatuSensu")}</td>
                            
                        </tr>
 						
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.semestresPET.label" default="Semestres concluidos participando do grupo PET" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "semestresPET")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                
                    <g:hiddenField name="id" value="${inscricaoInstance?.id}" />
                    
                    <g:set var="tamanho" value="${0}"/>
                
                
                	<g:each in="${inscricaoInstance.documentos}" status="j" var="inscricaoInstance">
                    		<g:set var="tamanho" value="${tamanho + 1}"/>
                    	
                    </g:each>
                    <g:if test="${tamanho < 1 }">
                    <span class="button"><g:actionSubmit disabled="true" class="edit" action="downloadFile" value="Download File" /></span>
                    
                    </g:if>
                    <g:else>
                    <span class="button"><g:actionSubmit class="edit" action="downloadFile" value="Download File" /></span>
                    
                    </g:else>
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
