

<%@ page import="copin.Inscricao" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
        <title><g:message code="Inscricao" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
           <span class="menuButton"><a class="home" href="${createLink(uri: '/usuario/perfil')}"><g:message code="default.home.label"/></a></span>
        	<span class="menuButton"><a class="list" href="${createLink(uri: '/chamada/index')}"><g:message code="Lista"/></a></span>
        </div>
        <div class="body">
           <h2 align="center" size="1"><g:message code="Inscricao" args="[entityName]" /></h2>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${inscricaoInstance}">
            <div class="errors">
                <g:renderErrors bean="${inscricaoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <h1><g:message code="Dados basicos"/></h1>
                        	                            
                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cargoFuncoes"><g:message code="inscricao.cargoFuncoes.label" default="Cargo Funcoes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'cargoFuncoes', 'errors')}">
                                    <g:textField name="cargoFuncoes" value="${inscricaoInstance?.cargoFuncoes}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="empresaInstituicao"><g:message code="inscricao.empresaInstituicao.label" default="Empresa Instituicao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'empresaInstituicao', 'errors')}">
                                    <g:textField name="empresaInstituicao" value="${inscricaoInstance?.empresaInstituicao}" />
                                </td>
                            </tr>
                            
                           <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="primeiraOpcaoProjeto"><g:message code="inscricao.primeiraOpcaoProjeto.label" default="Primeira Opcao Projeto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'primeiraOpcaoProjeto', 'errors')}">
                                    <g:textField name="primeiraOpcaoProjeto" value="${inscricaoInstance?.primeiraOpcaoProjeto}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="segundaOpcaoProjeto"><g:message code="inscricao.segundaOpcaoProjeto.label" default="Segunda Opcao Projeto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'segundaOpcaoProjeto', 'errors')}">
                                    <g:textField name="segundaOpcaoProjeto" value="${inscricaoInstance?.segundaOpcaoProjeto}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="terceiraOpcaoProjeto"><g:message code="inscricao.terceiraOpcaoProjeto.label" default="Terceira Opcao Projeto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'terceiraOpcaoProjeto', 'errors')}">
                                    <g:textField name="terceiraOpcaoProjeto" value="${inscricaoInstance?.terceiraOpcaoProjeto}" />
                                </td>
                            </tr>
                     
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quartaOpcaoProjeto"><g:message code="inscricao.quartaOpcaoProjeto.label" default="Quarta Opcao Projeto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'quartaOpcaoProjeto', 'errors')}">
                                    <g:textField name="quartaOpcaoProjeto" value="${inscricaoInstance?.quartaOpcaoProjeto}" />
                                </td>
                            </tr>
                     
                    		<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cursoInscricao"><g:message code="inscricao.cursoInscricao.label" default="Curso Inscricao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'cursoInscricao', 'errors')}">
                                    <g:textField name="cursoInscricao" value="${inscricaoInstance?.cursoInscricao}" />
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
                                    <label for="instituicao"><g:message code="inscricao.instituicao.label" default="Instituicao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'instituicao', 'errors')}">
                                    <g:textField name="instituicao" value="${inscricaoInstance?.instituicao}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="curso"><g:message code="inscricao.curso.label" default="Curso" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'curso', 'errors')}">
                                    <g:textField name="curso" value="${inscricaoInstance?.curso}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="enade"><g:message code="inscricao.enade.label" default="Enade" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'enade', 'errors')}">
                                    <g:textField name="enade" value="${fieldValue(bean: inscricaoInstance, field: 'enade')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anoDeConclusao"><g:message code="inscricao.anoDeConclusao.label" default="Ano De Conclusao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'anoDeConclusao', 'errors')}">
                                    <g:datePicker name="anoDeConclusao" precision="day" value="${inscricaoInstance?.anoDeConclusao}"  />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mediaEscolar"><g:message code="inscricao.mediaEscolar.label" default="Media Escolar" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'mediaEscolar', 'errors')}">
                                    <g:textField name="mediaEscolar" value="${fieldValue(bean: inscricaoInstance, field: 'mediaEscolar')}" />
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
                                    <label for="instituicaoMestrado"><g:message code="inscricao.instituicaoMestrado.label" default="Instituicao Mestrado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'instituicaoMestrado', 'errors')}">
                                    <g:textField name="instituicaoMestrado" value="${inscricaoInstance?.instituicaoMestrado}" />
                                </td>
                            </tr>
                        
                        	<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cursoMestrado"><g:message code="inscricao.cursoMestrado.label" default="Curso Mestrado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'cursoMestrado', 'errors')}">
                                    <g:textField name="cursoMestrado" value="${inscricaoInstance?.cursoMestrado}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="enadeMestrado"><g:message code="inscricao.enadeMestrado.label" default="Enade Mestrado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'enadeMestrado', 'errors')}">
                                    <g:textField name="enadeMestrado" value="${fieldValue(bean: inscricaoInstance, field: 'enadeMestrado')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anoDeConclusaoMestrado"><g:message code="inscricao.anoDeConclusaoMestrado.label" default="Ano De Conclusao Mestrado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'anoDeConclusaoMestrado', 'errors')}">
                                    <g:datePicker name="anoDeConclusaoMestrado" precision="day" value="${inscricaoInstance?.anoDeConclusaoMestrado}"  />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mediaEscolarMestrado"><g:message code="inscricao.mediaEscolarMestrado.label" default="Media Escolar Mestrado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'mediaEscolarMestrado', 'errors')}">
                                    <g:textField name="mediaEscolarMestrado" value="${fieldValue(bean: inscricaoInstance, field: 'mediaEscolarMestrado')}" />
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
                                    <label for="vinculoEmpregaticio"><g:message code="inscricao.vinculoEmpregaticio.label" default="Vinculo Empregaticio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'vinculoEmpregaticio', 'errors')}">
                                    <g:select name="vinculoEmpregaticio" from="${['Sim', 'Nao']}" value="${inscricaoInstance?.vinculoEmpregaticio}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeEmpresa"><g:message code="inscricao.nomeEmpresa.label" default="Nome Empresa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'nomeEmpresa', 'errors')}">
                                    <g:textField name="nomeEmpresa" value="${inscricaoInstance?.nomeEmpresa}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="solicitaBolsa"><g:message code="inscricao.solicitaBolsa.label" default="Solicita Bolsa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'solicitaBolsa', 'errors')}">
                                    <g:select name="solicitaBolsa" from="${['Sim', 'Nao']}" value="${inscricaoInstance?.solicitaBolsa}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="vinculoPICD"><g:message code="inscricao.vinculoPICD.label" default="Vinculo PICD" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'vinculoPICD', 'errors')}">
                                    <g:textField name="vinculoPICD" value="${inscricaoInstance?.vinculoPICD}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="universidadePICD"><g:message code="inscricao.universidadePICD.label" default="Universidade PICD" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'universidadePICD', 'errors')}">
                                    <g:textField name="universidadePICD" value="${inscricaoInstance?.universidadePICD}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sabeProgramar"><g:message code="inscricao.sabeProgramar.label" default="Sabe Programar" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'sabeProgramar', 'errors')}">
                                    <g:select name="sabeProgramar" from="${['Sim', 'Nao']}" value="${inscricaoInstance?.sabeProgramar}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="linguagens"><g:message code="inscricao.linguagens.label" default="Linguagens" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'linguagens', 'errors')}">
                                    <g:textField name="linguagens" value="${inscricaoInstance?.linguagens}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="numeroInscricaoPoscomp"><g:message code="inscricao.numeroInscricaoPoscomp.label" default="Numero Inscricao Poscomp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'numeroInscricaoPoscomp', 'errors')}">
                                    <g:textField name="numeroInscricaoPoscomp" value="${fieldValue(bean: inscricaoInstance, field: 'numeroInscricaoPoscomp')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="resultadoPoscomp"><g:message code="inscricao.resultadoPoscomp.label" default="Resultado Poscomp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'resultadoPoscomp', 'errors')}">
                                    <g:textField name="resultadoPoscomp" value="${fieldValue(bean: inscricaoInstance, field: 'resultadoPoscomp')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anoPoscomp"><g:message code="inscricao.anoPoscomp.label" default="Ano Poscomp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'anoPoscomp', 'errors')}">
                                    <g:datePicker name="anoPoscomp" precision="day" value="${inscricaoInstance?.anoPoscomp}"  />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="estudoTempoIntegral"><g:message code="inscricao.estudoTempoIntegral.label" default="Estudo Tempo Integral" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'estudoTempoIntegral', 'errors')}">
                                    <g:select name="estudoTempoIntegral" from="${['Sim', 'Nao']}" value="${inscricaoInstance?.estudoTempoIntegral}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="alunoEspecial"><g:message code="inscricao.alunoEspecial.label" default="Aluno Especial" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'alunoEspecial', 'errors')}">
                                    <g:select name="alunoEspecial" from="${['Sim', 'Nao']}" value="${inscricaoInstance?.alunoEspecial}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantasDisciplinasEspeciais"><g:message code="inscricao.quantasDisciplinasEspeciais.label" default="Quantas Disciplinas Especiais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'quantasDisciplinasEspeciais', 'errors')}">
                                    <g:textField name="quantasDisciplinasEspeciais" value="${fieldValue(bean: inscricaoInstance, field: 'quantasDisciplinasEspeciais')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mediaDisciplinasEspeciais"><g:message code="inscricao.mediaDisciplinasEspeciais.label" default="Media Disciplinas Especiais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'mediaDisciplinasEspeciais', 'errors')}">
                                    <g:textField name="mediaDisciplinasEspeciais" value="${fieldValue(bean: inscricaoInstance, field: 'mediaDisciplinasEspeciais')}" />
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
                                    <label for="qualisInternacional"><g:message code="inscricao.qualisInternacional.label" default="Qualis Internacional" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'qualisInternacional', 'errors')}">
                                    <g:textField name="qualisInternacional" value="${fieldValue(bean: inscricaoInstance, field: 'qualisInternacional')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="qualisNacional"><g:message code="inscricao.qualisNacional.label" default="Qualis Nacional" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'qualisNacional', 'errors')}">
                                    <g:textField name="qualisNacional" value="${fieldValue(bean: inscricaoInstance, field: 'qualisNacional')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="outrasInternacionais"><g:message code="inscricao.outrasInternacionais.label" default="Outras Internacionais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'outrasInternacionais', 'errors')}">
                                    <g:textField name="outrasInternacionais" value="${fieldValue(bean: inscricaoInstance, field: 'outrasInternacionais')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="outrasNacionais"><g:message code="inscricao.outrasNacionais.label" default="Outras Nacionais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'outrasNacionais', 'errors')}">
                                    <g:textField name="outrasNacionais" value="${fieldValue(bean: inscricaoInstance, field: 'outrasNacionais')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="locaisERegionais"><g:message code="inscricao.locaisERegionais.label" default="Locais ER egionais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'locaisERegionais', 'errors')}">
                                    <g:textField name="locaisERegionais" value="${fieldValue(bean: inscricaoInstance, field: 'locaisERegionais')}" />
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
                                    <label for="semestresPesquisadorMestrado"><g:message code="inscricao.semestresPesquisadorMestrado.label" default="Semestres Pesquisador Mestrado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'semestresPesquisadorMestrado', 'errors')}">
                                    <g:textField name="semestresPesquisadorMestrado" value="${fieldValue(bean: inscricaoInstance, field: 'semestresPesquisadorMestrado')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="semestresMonitoria"><g:message code="inscricao.semestresMonitoria.label" default="Semestres Monitoria" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'semestresMonitoria', 'errors')}">
                                    <g:textField name="semestresMonitoria" value="${fieldValue(bean: inscricaoInstance, field: 'semestresMonitoria')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="semestresEnsino"><g:message code="inscricao.semestresEnsino.label" default="Semestres Ensino" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'semestresEnsino', 'errors')}">
                                    <g:textField name="semestresEnsino" value="${fieldValue(bean: inscricaoInstance, field: 'semestresEnsino')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="semestresAtuandoNaArea"><g:message code="inscricao.semestresAtuandoNaArea.label" default="Semestres Atuando Na Area" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'semestresAtuandoNaArea', 'errors')}">
                                    <g:textField name="semestresAtuandoNaArea" value="${fieldValue(bean: inscricaoInstance, field: 'semestresAtuandoNaArea')}" />
                                </td>
                            </tr>
                        
                        	<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="semestresPibicIti"><g:message code="inscricao.semestresPibicIti.label" default="Semestres Pibic Iti" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'semestresPibicIti', 'errors')}">
                                    <g:textField name="semestresPibicIti" value="${fieldValue(bean: inscricaoInstance, field: 'semestresPibicIti')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="especializacaoLatuSensu"><g:message code="inscricao.especializacaoLatuSensu.label" default="Especializacao Latu Sensu" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'especializacaoLatuSensu', 'errors')}">
                                    <g:textField name="especializacaoLatuSensu" value="${fieldValue(bean: inscricaoInstance, field: 'especializacaoLatuSensu')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="semestresPET"><g:message code="inscricao.semestresPET.label" default="Semestres PET" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: inscricaoInstance, field: 'semestresPET', 'errors')}">
                                    <g:textField name="semestresPET" value="${fieldValue(bean: inscricaoInstance, field: 'semestresPET')}" />
                                </td>
                            </tr>
                            
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
