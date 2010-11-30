

<%@ page import="copin.Avaliacao" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'avaliacao.label', default: 'Avaliacao')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${avaliacaoInstance}">
            <div class="errors">
                <g:renderErrors bean="${avaliacaoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${avaliacaoInstance?.id}" />
                <g:hiddenField name="version" value="${avaliacaoInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="enade"><g:message code="avaliacao.enade.label" default="Enade" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'enade', 'errors')}">
                                    <g:textField name="enade" value="${fieldValue(bean: avaliacaoInstance, field: 'enade')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="mediaEscolar"><g:message code="avaliacao.mediaEscolar.label" default="Media Escolar" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'mediaEscolar', 'errors')}">
                                    <g:textField name="mediaEscolar" value="${fieldValue(bean: avaliacaoInstance, field: 'mediaEscolar')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="enadeMestrado"><g:message code="avaliacao.enadeMestrado.label" default="Enade Mestrado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'enadeMestrado', 'errors')}">
                                    <g:textField name="enadeMestrado" value="${fieldValue(bean: avaliacaoInstance, field: 'enadeMestrado')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="mediaEscolarMestrado"><g:message code="avaliacao.mediaEscolarMestrado.label" default="Media Escolar Mestrado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'mediaEscolarMestrado', 'errors')}">
                                    <g:textField name="mediaEscolarMestrado" value="${fieldValue(bean: avaliacaoInstance, field: 'mediaEscolarMestrado')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numeroInscricaoPoscomp"><g:message code="avaliacao.numeroInscricaoPoscomp.label" default="Numero Inscricao Poscomp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'numeroInscricaoPoscomp', 'errors')}">
                                    <g:textField name="numeroInscricaoPoscomp" value="${fieldValue(bean: avaliacaoInstance, field: 'numeroInscricaoPoscomp')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="resultadoPoscomp"><g:message code="avaliacao.resultadoPoscomp.label" default="Resultado Poscomp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'resultadoPoscomp', 'errors')}">
                                    <g:textField name="resultadoPoscomp" value="${fieldValue(bean: avaliacaoInstance, field: 'resultadoPoscomp')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="quantasDisciplinasEspeciais"><g:message code="avaliacao.quantasDisciplinasEspeciais.label" default="Quantas Disciplinas Especiais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'quantasDisciplinasEspeciais', 'errors')}">
                                    <g:textField name="quantasDisciplinasEspeciais" value="${fieldValue(bean: avaliacaoInstance, field: 'quantasDisciplinasEspeciais')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="mediaDisciplinasEspeciais"><g:message code="avaliacao.mediaDisciplinasEspeciais.label" default="Media Disciplinas Especiais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'mediaDisciplinasEspeciais', 'errors')}">
                                    <g:textField name="mediaDisciplinasEspeciais" value="${fieldValue(bean: avaliacaoInstance, field: 'mediaDisciplinasEspeciais')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="qualisInternacional"><g:message code="avaliacao.qualisInternacional.label" default="Qualis Internacional" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'qualisInternacional', 'errors')}">
                                    <g:textField name="qualisInternacional" value="${fieldValue(bean: avaliacaoInstance, field: 'qualisInternacional')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="qualisNacional"><g:message code="avaliacao.qualisNacional.label" default="Qualis Nacional" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'qualisNacional', 'errors')}">
                                    <g:textField name="qualisNacional" value="${fieldValue(bean: avaliacaoInstance, field: 'qualisNacional')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="outrasInternacionais"><g:message code="avaliacao.outrasInternacionais.label" default="Outras Internacionais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'outrasInternacionais', 'errors')}">
                                    <g:textField name="outrasInternacionais" value="${fieldValue(bean: avaliacaoInstance, field: 'outrasInternacionais')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="outrasNacionais"><g:message code="avaliacao.outrasNacionais.label" default="Outras Nacionais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'outrasNacionais', 'errors')}">
                                    <g:textField name="outrasNacionais" value="${fieldValue(bean: avaliacaoInstance, field: 'outrasNacionais')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="locaisERegionais"><g:message code="avaliacao.locaisERegionais.label" default="Locais ER egionais" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'locaisERegionais', 'errors')}">
                                    <g:textField name="locaisERegionais" value="${fieldValue(bean: avaliacaoInstance, field: 'locaisERegionais')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="semestresPesquisadorMestrado"><g:message code="avaliacao.semestresPesquisadorMestrado.label" default="Semestres Pesquisador Mestrado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'semestresPesquisadorMestrado', 'errors')}">
                                    <g:textField name="semestresPesquisadorMestrado" value="${fieldValue(bean: avaliacaoInstance, field: 'semestresPesquisadorMestrado')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="semestresMonitoria"><g:message code="avaliacao.semestresMonitoria.label" default="Semestres Monitoria" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'semestresMonitoria', 'errors')}">
                                    <g:textField name="semestresMonitoria" value="${fieldValue(bean: avaliacaoInstance, field: 'semestresMonitoria')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="semestresEnsino"><g:message code="avaliacao.semestresEnsino.label" default="Semestres Ensino" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'semestresEnsino', 'errors')}">
                                    <g:textField name="semestresEnsino" value="${fieldValue(bean: avaliacaoInstance, field: 'semestresEnsino')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="semestresAtuandoNaArea"><g:message code="avaliacao.semestresAtuandoNaArea.label" default="Semestres Atuando Na Area" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'semestresAtuandoNaArea', 'errors')}">
                                    <g:textField name="semestresAtuandoNaArea" value="${fieldValue(bean: avaliacaoInstance, field: 'semestresAtuandoNaArea')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="semestresPibicIti"><g:message code="avaliacao.semestresPibicIti.label" default="Semestres Pibic Iti" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'semestresPibicIti', 'errors')}">
                                    <g:textField name="semestresPibicIti" value="${fieldValue(bean: avaliacaoInstance, field: 'semestresPibicIti')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="especializacaoLatuSensu"><g:message code="avaliacao.especializacaoLatuSensu.label" default="Especializacao Latu Sensu" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'especializacaoLatuSensu', 'errors')}">
                                    <g:textField name="especializacaoLatuSensu" value="${fieldValue(bean: avaliacaoInstance, field: 'especializacaoLatuSensu')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="semestresPET"><g:message code="avaliacao.semestresPET.label" default="Semestres PET" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'semestresPET', 'errors')}">
                                    <g:textField name="semestresPET" value="${fieldValue(bean: avaliacaoInstance, field: 'semestresPET')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="mediaGeral"><g:message code="avaliacao.mediaGeral.label" default="Media Geral" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'mediaGeral', 'errors')}">
                                    <g:textField name="mediaGeral" value="${fieldValue(bean: avaliacaoInstance, field: 'mediaGeral')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="primeiraOpcaoProjeto"><g:message code="avaliacao.primeiraOpcaoProjeto.label" default="Primeira Opcao Projeto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'primeiraOpcaoProjeto', 'errors')}">
                                    <g:textField name="primeiraOpcaoProjeto" value="${avaliacaoInstance?.primeiraOpcaoProjeto}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="segundaOpcaoProjeto"><g:message code="avaliacao.segundaOpcaoProjeto.label" default="Segunda Opcao Projeto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'segundaOpcaoProjeto', 'errors')}">
                                    <g:textField name="segundaOpcaoProjeto" value="${avaliacaoInstance?.segundaOpcaoProjeto}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="terceiraOpcaoProjeto"><g:message code="avaliacao.terceiraOpcaoProjeto.label" default="Terceira Opcao Projeto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'terceiraOpcaoProjeto', 'errors')}">
                                    <g:textField name="terceiraOpcaoProjeto" value="${avaliacaoInstance?.terceiraOpcaoProjeto}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="quartaOpcaoProjeto"><g:message code="avaliacao.quartaOpcaoProjeto.label" default="Quarta Opcao Projeto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'quartaOpcaoProjeto', 'errors')}">
                                    <g:textField name="quartaOpcaoProjeto" value="${avaliacaoInstance?.quartaOpcaoProjeto}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="cursoInscricao"><g:message code="avaliacao.cursoInscricao.label" default="Curso Inscricao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'cursoInscricao', 'errors')}">
                                    <g:textField name="cursoInscricao" value="${avaliacaoInstance?.cursoInscricao}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="instituicao"><g:message code="avaliacao.instituicao.label" default="Instituicao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'instituicao', 'errors')}">
                                    <g:textField name="instituicao" value="${avaliacaoInstance?.instituicao}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="curso"><g:message code="avaliacao.curso.label" default="Curso" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'curso', 'errors')}">
                                    <g:textField name="curso" value="${avaliacaoInstance?.curso}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="instituicaoMestrado"><g:message code="avaliacao.instituicaoMestrado.label" default="Instituicao Mestrado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'instituicaoMestrado', 'errors')}">
                                    <g:textField name="instituicaoMestrado" value="${avaliacaoInstance?.instituicaoMestrado}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="cursoMestrado"><g:message code="avaliacao.cursoMestrado.label" default="Curso Mestrado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'cursoMestrado', 'errors')}">
                                    <g:textField name="cursoMestrado" value="${avaliacaoInstance?.cursoMestrado}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nomeEmpresa"><g:message code="avaliacao.nomeEmpresa.label" default="Nome Empresa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'nomeEmpresa', 'errors')}">
                                    <g:textField name="nomeEmpresa" value="${avaliacaoInstance?.nomeEmpresa}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="universidadePICD"><g:message code="avaliacao.universidadePICD.label" default="Universidade PICD" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'universidadePICD', 'errors')}">
                                    <g:textField name="universidadePICD" value="${avaliacaoInstance?.universidadePICD}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="linguagens"><g:message code="avaliacao.linguagens.label" default="Linguagens" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'linguagens', 'errors')}">
                                    <g:textField name="linguagens" value="${avaliacaoInstance?.linguagens}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="alunoEspecial"><g:message code="avaliacao.alunoEspecial.label" default="Aluno Especial" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'alunoEspecial', 'errors')}">
                                    <g:textField name="alunoEspecial" value="${avaliacaoInstance?.alunoEspecial}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="anoDeConclusao"><g:message code="avaliacao.anoDeConclusao.label" default="Ano De Conclusao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'anoDeConclusao', 'errors')}">
                                    <g:datePicker name="anoDeConclusao" precision="day" value="${avaliacaoInstance?.anoDeConclusao}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="anoDeConclusaoMestrado"><g:message code="avaliacao.anoDeConclusaoMestrado.label" default="Ano De Conclusao Mestrado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'anoDeConclusaoMestrado', 'errors')}">
                                    <g:datePicker name="anoDeConclusaoMestrado" precision="day" value="${avaliacaoInstance?.anoDeConclusaoMestrado}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="anoPoscomp"><g:message code="avaliacao.anoPoscomp.label" default="Ano Poscomp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'anoPoscomp', 'errors')}">
                                    <g:datePicker name="anoPoscomp" precision="day" value="${avaliacaoInstance?.anoPoscomp}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="cargoFuncoes"><g:message code="avaliacao.cargoFuncoes.label" default="Cargo Funcoes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'cargoFuncoes', 'errors')}">
                                    <g:textField name="cargoFuncoes" value="${avaliacaoInstance?.cargoFuncoes}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="empresaInstituicao"><g:message code="avaliacao.empresaInstituicao.label" default="Empresa Instituicao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'empresaInstituicao', 'errors')}">
                                    <g:textField name="empresaInstituicao" value="${avaliacaoInstance?.empresaInstituicao}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="estudoTempoIntegral"><g:message code="avaliacao.estudoTempoIntegral.label" default="Estudo Tempo Integral" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'estudoTempoIntegral', 'errors')}">
                                    <g:textField name="estudoTempoIntegral" value="${avaliacaoInstance?.estudoTempoIntegral}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="inscricao"><g:message code="avaliacao.inscricao.label" default="Inscricao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'inscricao', 'errors')}">
                                    <g:select name="inscricao.id" from="${copin.Inscricao.list()}" optionKey="id" value="${avaliacaoInstance?.inscricao?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="sabeProgramar"><g:message code="avaliacao.sabeProgramar.label" default="Sabe Programar" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'sabeProgramar', 'errors')}">
                                    <g:textField name="sabeProgramar" value="${avaliacaoInstance?.sabeProgramar}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="solicitaBolsa"><g:message code="avaliacao.solicitaBolsa.label" default="Solicita Bolsa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'solicitaBolsa', 'errors')}">
                                    <g:textField name="solicitaBolsa" value="${avaliacaoInstance?.solicitaBolsa}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="vinculoEmpregaticio"><g:message code="avaliacao.vinculoEmpregaticio.label" default="Vinculo Empregaticio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'vinculoEmpregaticio', 'errors')}">
                                    <g:textField name="vinculoEmpregaticio" value="${avaliacaoInstance?.vinculoEmpregaticio}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="vinculoPICD"><g:message code="avaliacao.vinculoPICD.label" default="Vinculo PICD" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: avaliacaoInstance, field: 'vinculoPICD', 'errors')}">
                                    <g:textField name="vinculoPICD" value="${avaliacaoInstance?.vinculoPICD}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
