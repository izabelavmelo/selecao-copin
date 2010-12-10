

<%@ page import="copin.Avaliacao" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'avaliacao.label', default: 'Avaliacao')}" />
        <title><g:message code="Avaliacao" args="[entityName]" /></title>
    	
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
			<g:if test="${!session.usuario.ehAvaliador}">
				<g:if test="${session.usuario.ehAdministrador}">

					<meta http-equiv="refresh" content="0; url = ${createLink(controller:'usuario', action:'perfilAdministrador')}"/>
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
            <span class="menuButton"><a class="home" href="${createLink(controller:'usuario' , action:'perfil')}"><g:message code="default.home.label"/></a></span>
        
        </div>
        <div class="body">
            <h2 align="center" size="1"><g:message code="Avaliacao de um candidato" args="[entityName]" /></h2>
            
            <g:if test="${flash.message}">
            	<div class="message">${flash.message}</div>
            </g:if>
            
            <g:hasErrors bean="${avaliacaoInstance}">
            	<div class="errors">
                	<g:renderErrors bean="${avaliacaoInstance}" as="list" />
            	</div>
            </g:hasErrors>
            
            <g:form action="save" >
                         
                <div class="dialog">
            
            	<g:set var="jaAvaliou" value="${false}"/>
                
                	<g:each in="${avaliacaoList}" status="i" var="avaliacaoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        		<g:if test="${avaliacaoInstance.avaliador.id == session.usuario.id && inscricaoInstance?.id == avaliacaoInstance.inscricao.id }">
                        			
                        			<g:set var="jaAvaliou" value="${true}"/> </br>
                        		</g:if>
                        </tr>
                    </g:each>
                    
                    <g:if test="${jaAvaliou }">
                	
                	<table>
                        <tbody>
                        
                        	<tr class="prop">
                        	<td><h1><g:message code="Atencao! Voce ja avaliou essa inscricao!"/></h1></td>
                            </tr>
                        </tbody>
                    </table>
                    </g:if>
                    <g:else>
                    
                	<table>
                        <tbody>
                        	<h1><g:message code="Atencao!"/></h1>
                        	<tr class="prop">
                        		<td>Nem todos os campos podem ser editados. Alguns deles nao farao parte da composicao da media do candidato.</td>
                            </tr>
                        </tbody>
                	</table>
                	<br></br>
                    
                    <table>
                        <tbody>                       
                            <h1><g:message code="Dados basicos"/></h1>                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cargoFuncoes"><g:message code="avaliacao.inscricao.cargoFuncoes.label" default="Cargo e funcoes atuais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'cargoFuncoes', 'errors')}">
                                    <g:textField name="cargoFuncoes" value="${avaliacaoInstance?.inscricao?.cargoFuncoes}" disabled="true" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="empresaInstituicao"><g:message code="avaliacao.inscricao.empresaInstituicao.label" default="Instituicao ou empresa atual" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'empresaInstituicao', 'errors')}">
                                    <g:textField name="empresaInstituicao" value="${avaliacaoInstance?.inscricao?.empresaInstituicao}" disabled="true" />
                                </td>
                            </tr>
                            
                           <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="primeiraOpcaoProjeto"><g:message code="avaliacao.inscricao.primeiraOpcaoProjeto.label" default="Primeira opcao de projeto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'primeiraOpcaoProjeto', 'errors')}">
                                    <g:textField name="primeiraOpcaoProjeto" value="${avaliacaoInstance?.inscricao?.primeiraOpcaoProjeto}" disabled="true" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="segundaOpcaoProjeto"><g:message code="avaliacao.inscricao.segundaOpcaoProjeto.label" default="Segunda opcao de projeto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'segundaOpcaoProjeto', 'errors')}">
                                    <g:textField name="segundaOpcaoProjeto" value="${avaliacaoInstance?.inscricao?.segundaOpcaoProjeto}" disabled="true" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="terceiraOpcaoProjeto"><g:message code="avaliacao.inscricao.terceiraOpcaoProjeto.label" default="Terceira opcao de projeto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'terceiraOpcaoProjeto', 'errors')}">
                                    <g:textField name="terceiraOpcaoProjeto" value="${avaliacaoInstance?.inscricao?.terceiraOpcaoProjeto}" disabled="true" />
                                </td>
                            </tr>
                     
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quartaOpcaoProjeto"><g:message code="avaliacao.inscricao.quartaOpcaoProjeto.label" default="Quarta opcao de projeto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'quartaOpcaoProjeto', 'errors')}">
                                    <g:textField name="quartaOpcaoProjeto" value="${avaliacaoInstance?.inscricao?.quartaOpcaoProjeto}" disabled="true" />
                                </td>
                            </tr>
                     
                    		<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cursoInscricao"><g:message code="avaliacao.inscricao.cursoInscricao.label" default="Curso para o qual se inscreve" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'cursoInscricao', 'errors')}">
                                    <g:textField name="cursoInscricao" value="${avaliacaoInstance?.inscricao?.cursoInscricao}" disabled="true" />
                                </td>
                            </tr>
                     	</tbody>
                     </table>
                     
                     <table>
                     	<tbody>
                     		</br>
                     		<h1><g:message code="Formacao universitaria (graduacao)"/></h1>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="instituicao"><g:message code="avaliacao.inscricao.instituicao.label" default="Instituicao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'instituicao', 'errors')}">
                                    <g:textField name="instituicao" value="${avaliacaoInstance?.inscricao?.instituicao}" disabled="true"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="curso"><g:message code="avaliacao.inscricao.curso.label" default="Curso" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'curso', 'errors')}">
                                    <g:textField name="curso" value="${avaliacaoInstance?.inscricao?.curso}" disabled="true"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="enade"><g:message code="avaliacao.inscricao.enade.label" default="Avaliacao ENADE do curso" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'enade', 'errors')}">
                                    <g:select from="${0..5}" name="enade" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'enade')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anoDeConclusao"><g:message code="avaliacao.inscricao.anoDeConclusao.label" default="Ano de conclusao do curso" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'anoDeConclusao', 'errors')}">
                                    <g:datePicker name="anoDeConclusao" precision="year" value="${avaliacaoInstance?.inscricao?.anoDeConclusao}" disabled="true"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mediaEscolar"><g:message code="avaliacao.inscricao.mediaEscolar.label" default="Media escolar (0 a 10)" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'mediaEscolar', 'errors')}">
                                    <g:textField name="mediaEscolar" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'mediaEscolar')}" />
                                </td>
                            </tr>
                        </tbody>
                     </table>
                     
                     <table>
                     	<tbody>
                     		</br>
                     		<h1><g:message code="Formacao universitaria (mestrado)"/></h1>
                            
                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="instituicaoMestrado"><g:message code="avaliacao.inscricao.instituicaoMestrado.label" default="Instituicao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'instituicaoMestrado', 'errors')}">
                                    <g:textField name="instituicaoMestrado" value="${avaliacaoInstance?.inscricao?.instituicaoMestrado}" disabled="true"/>
                                </td>
                            </tr>
                        
                        	<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cursoMestrado"><g:message code="avaliacao.inscricao.cursoMestrado.label" default="Curso" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'cursoMestrado', 'errors')}">
                                    <g:textField name="cursoMestrado" value="${avaliacaoInstance?.inscricao?.cursoMestrado}" disabled="true"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="enadeMestrado"><g:message code="avaliacao.inscricao.enadeMestrado.label" default="Avaliacao CAPES do curso" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'enadeMestrado', 'errors')}">
                                    <g:select from="${0..5}" name="enadeMestrado" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'enadeMestrado')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anoDeConclusaoMestrado"><g:message code="avaliacao.inscricao.anoDeConclusaoMestrado.label" default="Ano de conclusao do mestrado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'anoDeConclusaoMestrado', 'errors')}">
                                    <g:datePicker name="anoDeConclusaoMestrado" precision="year" value="${avaliacaoInstance?.inscricao?.anoDeConclusaoMestrado}" disabled="true" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mediaEscolarMestrado"><g:message code="avaliacao.inscricao.mediaEscolarMestrado.label" default="Media escolar (0 a 10)" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'mediaEscolarMestrado', 'errors')}">
                                    <g:textField name="mediaEscolarMestrado" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'mediaEscolarMestrado')}" />
                                </td>
                            </tr>
                            
                        </tbody>
                     </table>
                     
                     <table>
                     	<tbody>
                     		</br>
                     		<h1><g:message code="Dados adicionais"/></h1>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="vinculoEmpregaticio"><g:message code="avaliacao.inscricao.vinculoEmpregaticio.label" default="Possui vinculo empregaticio?" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'vinculoEmpregaticio', 'errors')}">
                                    <g:select name="vinculoEmpregaticio" from="${['Sim', 'Nao']}" value="${avaliacaoInstance?.inscricao?.vinculoEmpregaticio}" disabled="true" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeEmpresa"><g:message code="avaliacao.inscricao.nomeEmpresa.label" default="Nome da empresa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'nomeEmpresa', 'errors')}">
                                    <g:textField name="nomeEmpresa" value="${avaliacaoInstance?.inscricao?.nomeEmpresa}" disabled="true" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="solicitaBolsa"><g:message code="avaliacao.inscricao.solicitaBolsa.label" default="Solicita bolsa?" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'solicitaBolsa', 'errors')}">
                                    <g:select name="solicitaBolsa" from="${['Sim', 'Nao']}" value="${avaliacaoInstance?.inscricao?.solicitaBolsa}" disabled="true" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="vinculoPICD"><g:message code="avaliacao.inscricao.vinculoPICD.label" default="Vinculo PICD?" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'vinculoPICD', 'errors')}">
                                    <g:select name="vinculoPICD" from="${['Sim', 'Nao']}" value="${avaliacaoInstance?.inscricao?.vinculoPICD}" disabled="true" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="universidadePICD"><g:message code="avaliacao.inscricao.universidadePICD.label" default="Universidade do PICD" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'universidadePICD', 'errors')}">
                                    <g:textField name="universidadePICD" value="${avaliacaoInstance?.inscricao?.universidadePICD}" disabled="true" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sabeProgramar"><g:message code="avaliacao.inscricao.sabeProgramar.label" default="Sabe programar?" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'sabeProgramar', 'errors')}">
                                    <g:select name="sabeProgramar" from="${['Sim', 'Nao']}" value="${avaliacaoInstance?.inscricao?.sabeProgramar}" disabled="true" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="linguagens"><g:message code="avaliacao.inscricao.linguagens.label" default="Em que linguagens?" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'linguagens', 'errors')}">
                                    <g:textField name="linguagens" value="${avaliacaoInstance?.inscricao?.linguagens}" disabled="true" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="numeroInscricaoPoscomp"><g:message code="avaliacao.inscricao.numeroInscricaoPoscomp.label" default="Numero de inscricao do POSCOMP" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'numeroInscricaoPoscomp', 'errors')}">
                                    <g:textField name="numeroInscricaoPoscomp" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'numeroInscricaoPoscomp')}" disabled="true" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="resultadoPoscomp"><g:message code="avaliacao.inscricao.resultadoPoscomp.label" default="Resultado do POSCOMP" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'resultadoPoscomp', 'errors')}">
                                    <g:select from="${0..70}" name="resultadoPoscomp" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'resultadoPoscomp')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anoPoscomp"><g:message code="avaliacao.inscricao.anoPoscomp.label" default="Ano de realizacao do POSCOMP?" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'anoPoscomp', 'errors')}">
                                    <g:datePicker name="anoPoscomp" precision="year" value="${avaliacaoInstance?.inscricao?.anoPoscomp}" disabled="true" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="estudoTempoIntegral"><g:message code="avaliacao.inscricao.estudoTempoIntegral.label" default="Deseja estudar em tempo integral?" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'estudoTempoIntegral', 'errors')}">
                                    <g:select name="estudoTempoIntegral" from="${['Sim', 'Nao']}" value="${avaliacaoInstance?.inscricao?.estudoTempoIntegral}" disabled="true" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="alunoEspecial"><g:message code="avaliacao.inscricao.alunoEspecial.label" default="Ja cursou disciplinas do programa como aluno especial?" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'alunoEspecial', 'errors')}">
                                    <g:select name="alunoEspecial" from="${['Sim', 'Nao']}" value="${avaliacaoInstance?.inscricao?.alunoEspecial}" disabled="true" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantasDisciplinasEspeciais"><g:message code="avaliacao.inscricao.quantasDisciplinasEspeciais.label" default="Quantas disciplinas?" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'quantasDisciplinasEspeciais', 'errors')}">
                                    <g:select from="${0..100}" name="quantasDisciplinasEspeciais" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'quantasDisciplinasEspeciais')}" disabled="true" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mediaDisciplinasEspeciais"><g:message code="avaliacao.inscricao.mediaDisciplinasEspeciais.label" default="Qual media obteve?" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'mediaDisciplinasEspeciais', 'errors')}">
                                    <g:textField name="mediaDisciplinasEspeciais" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'mediaDisciplinasEspeciais')}" />
                                </td>
                            </tr>
                        </tbody>
                     </table>
                     
                     <table>
                     	<tbody>
                     		</br>
                     		<h1><g:message code="Publicacoes (indicar o numero de publicacoes de cada tipo)"/></h1>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="qualisInternacional"><g:message code="avaliacao.inscricao.qualisInternacional.label" default="Qualis (veiculo internacional)" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'qualisInternacional', 'errors')}">
                                    <g:select from="${0..100}" name="qualisInternacional" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'qualisInternacional')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="qualisNacional"><g:message code="avaliacao.inscricao.qualisNacional.label" default="Qualis (veiculo nacional)" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'qualisNacional', 'errors')}">
                                    <g:select from="${0..100}" name="qualisNacional" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'qualisNacional')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="outrasInternacionais"><g:message code="avaliacao.inscricao.outrasInternacionais.label" default="Outras publicacoes internacionais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'outrasInternacionais', 'errors')}">
                                    <g:select from="${0..100}" name="outrasInternacionais" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'outrasInternacionais')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="outrasNacionais"><g:message code="avaliacao.inscricao.outrasNacionais.label" default="Outras publicacoes nacionais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'outrasNacionais', 'errors')}">
                                    <g:select from="${0..100}" name="outrasNacionais" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'outrasNacionais')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="locaisERegionais"><g:message code="avaliacao.inscricao.locaisERegionais.label" default="Outras publicacoes locais e regionais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'locaisERegionais', 'errors')}">
                                    <g:select from="${0..100}" name="locaisERegionais" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'locaisERegionais')}" />
                                </td>
                            </tr>
                            
                        </tbody>
                     </table>
                     
                     <table>
                     	<tbody>
                     		</br>
                     		<h1><g:message code="Outras atividades academicas"/></h1>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="semestresPesquisadorMestrado"><g:message code="avaliacao.inscricao.semestresPesquisadorMestrado.label" default="Semestres concluidos como pesquisador em tempo integral com nivel de mestrado (com bolsa)" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'semestresPesquisadorMestrado', 'errors')}">
                                    <g:select from="${0..100}" name="semestresPesquisadorMestrado" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'semestresPesquisadorMestrado')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="semestresMonitoria"><g:message code="avaliacao.inscricao.semestresMonitoria.label" default="Semestres concluidos de monitoria" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'semestresMonitoria', 'errors')}">
                                    <g:select from="${0..100}" name="semestresMonitoria" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'semestresMonitoria')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="semestresEnsino"><g:message code="avaliacao.inscricao.semestresEnsino.label" default="Semestres concluidos realizando atividades de ensino" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'semestresEnsino', 'errors')}">
                                    <g:select from="${0..100}" name="semestresEnsino" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'semestresEnsino')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="semestresAtuandoNaArea"><g:message code="avaliacao.inscricao.semestresAtuandoNaArea.label" default="Semestres concluidos atuando profissionalmente na area" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'semestresAtuandoNaArea', 'errors')}">
                                    <g:select from="${0..100}" name="semestresAtuandoNaArea" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'semestresAtuandoNaArea')}" />
                                </td>
                            </tr>
                        
                        	<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="semestresPibicIti"><g:message code="avaliacao.inscricao.semestresPibicIti.label" default="Semestres concluidos realizando PIBIC ou projeto de pesquisa com bolsa ITI" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'semestresPibicIti', 'errors')}">
                                    <g:select from="${0..100}" name="semestresPibicIti" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'semestresPibicIti')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="especializacaoLatuSensu"><g:message code="avaliacao.inscricao.especializacaoLatuSensu.label" default="Especializacao latu-sensu" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'especializacaoLatuSensu', 'errors')}">
                                    <g:select from="${0..100}" name="especializacaoLatuSensu" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'especializacaoLatuSensu')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="semestresPET"><g:message code="avaliacao.inscricao.semestresPET.label" default="Semestres concluidos participando do grupo PET" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'semestresPET', 'errors')}">
                                    <g:select from="${0..100}" name="semestresPET" value="${fieldValue(bean: avaliacaoInstance.inscricao, field: 'semestresPET')}" />
                                </td>
                            </tr>
                            
                        </tbody>
                     </table>
                     
                     </br>
                     
                        <tbody>
                        	<h1><g:message code="Download de documentos"/></h1>
                        	<g:form>
                
                    			<g:hiddenField name="id" value="${avaliacaoInstance.inscricao?.id}" />
                    
                    			<g:set var="tamanho" value="${0}"/>
                
                
                				<g:each in="${avaliacaoInstance.inscricao.documentos}" status="j" var="inscricaoInstance">
                    				<g:set var="tamanho" value="${tamanho + 1}"/>
                    			</g:each>
                    			
		             			<g:if test="${tamanho < 1 }">
                    				<span class="button"><g:actionSubmit disabled="true" class="edit" action="downloadFile" value="Download File" /></span>
                    			</g:if>
                    			
                    			<g:else>
                    				<span class="button"><g:actionSubmit class="edit" action="downloadFile" value="Download File" /></span>
                    			</g:else>
		                </g:form>
                      </tbody>
                	
                    <table>
                        <tbody>
                     		</br>
                     		<h1><g:message code="Notas gerais dos documentos recebidos"/></h1>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cartasDeRecomendacao"><g:message code="avaliacao.cartasDeRecomendacao.label" default="Cartas de Recomendacao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'cartasDeRecomendacao', 'errors')}">
                                    <g:textField name="cartasDeRecomendacao" value="${fieldValue(bean: avaliacaoInstance, field: 'cartasDeRecomendacao')}" /></td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="curriculo"><g:message code="avaliacao.curriculo.label" default="Curriculum Vitae" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'curriculo', 'errors')}">
                                    <g:textField name="curriculo" value="${fieldValue(bean: avaliacaoInstance, field: 'curriculo')}" /></td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cartaDeIntencoes"><g:message code="avaliacao.cartaDeIntencoes.label" default="Carta de Intencoes (apenas para candidatos a mestrado)" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'cartaDeIntencoes', 'errors')}">
                                    <g:textField name="cartaDeIntencoes" value="${fieldValue(bean: avaliacaoInstance, field: 'cartaDeIntencoes')}" /></td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="planoDeTrabalho"><g:message code="avaliacao.planoDeTrabalho.label" default="Plano de Trabalho (apenas para candidatos a doutorado)" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'planoDeTrabalho', 'errors')}">
                                    <g:textField name="planoDeTrabalho" value="${fieldValue(bean: avaliacaoInstance, field: 'planoDeTrabalho')}" /></td>
                            </tr>
                            
                        </tbody>
                     </table>
                     <br/>
            
                    </g:else>
            
                </div>
                
                <div class="buttons">
                	                
                <g:if test="${jaAvaliou}">
                	
                </g:if>
                <g:else>
                    <g:hiddenField name="idInscricao" value="${inscricaoInstance?.id}" />
                    <g:hiddenField name="idAvaliador" value="${session.usuario?.id}" />
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'Submeter', default: 'Submeter')}" /></span>
                
                </g:else>
                </div>
            </g:form>
        </div>
    </body>
</html>
