
<%@ page import="copin.Avaliacao" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'avaliacao.label', default: 'Avaliacao')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.enade.label" default="Enade" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "enade")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.mediaEscolar.label" default="Media Escolar" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "mediaEscolar")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.enadeMestrado.label" default="Enade Mestrado" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "enadeMestrado")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.mediaEscolarMestrado.label" default="Media Escolar Mestrado" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "mediaEscolarMestrado")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.numeroInscricaoPoscomp.label" default="Numero Inscricao Poscomp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "numeroInscricaoPoscomp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.resultadoPoscomp.label" default="Resultado Poscomp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "resultadoPoscomp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.quantasDisciplinasEspeciais.label" default="Quantas Disciplinas Especiais" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "quantasDisciplinasEspeciais")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.mediaDisciplinasEspeciais.label" default="Media Disciplinas Especiais" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "mediaDisciplinasEspeciais")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.qualisInternacional.label" default="Qualis Internacional" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "qualisInternacional")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.qualisNacional.label" default="Qualis Nacional" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "qualisNacional")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.outrasInternacionais.label" default="Outras Internacionais" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "outrasInternacionais")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.outrasNacionais.label" default="Outras Nacionais" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "outrasNacionais")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.locaisERegionais.label" default="Locais ER egionais" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "locaisERegionais")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.semestresPesquisadorMestrado.label" default="Semestres Pesquisador Mestrado" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "semestresPesquisadorMestrado")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.semestresMonitoria.label" default="Semestres Monitoria" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "semestresMonitoria")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.semestresEnsino.label" default="Semestres Ensino" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "semestresEnsino")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.semestresAtuandoNaArea.label" default="Semestres Atuando Na Area" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "semestresAtuandoNaArea")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.semestresPibicIti.label" default="Semestres Pibic Iti" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "semestresPibicIti")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.especializacaoLatuSensu.label" default="Especializacao Latu Sensu" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "especializacaoLatuSensu")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.semestresPET.label" default="Semestres PET" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "semestresPET")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.mediaGeral.label" default="Media Geral" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "mediaGeral")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.primeiraOpcaoProjeto.label" default="Primeira Opcao Projeto" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "primeiraOpcaoProjeto")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.segundaOpcaoProjeto.label" default="Segunda Opcao Projeto" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "segundaOpcaoProjeto")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.terceiraOpcaoProjeto.label" default="Terceira Opcao Projeto" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "terceiraOpcaoProjeto")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.quartaOpcaoProjeto.label" default="Quarta Opcao Projeto" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "quartaOpcaoProjeto")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.cursoInscricao.label" default="Curso Inscricao" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "cursoInscricao")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.instituicao.label" default="Instituicao" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "instituicao")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.curso.label" default="Curso" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "curso")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.instituicaoMestrado.label" default="Instituicao Mestrado" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "instituicaoMestrado")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.cursoMestrado.label" default="Curso Mestrado" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "cursoMestrado")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.nomeEmpresa.label" default="Nome Empresa" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "nomeEmpresa")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.universidadePICD.label" default="Universidade PICD" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "universidadePICD")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.linguagens.label" default="Linguagens" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "linguagens")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.alunoEspecial.label" default="Aluno Especial" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "alunoEspecial")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.anoDeConclusao.label" default="Ano De Conclusao" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${avaliacaoInstance?.anoDeConclusao}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.anoDeConclusaoMestrado.label" default="Ano De Conclusao Mestrado" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${avaliacaoInstance?.anoDeConclusaoMestrado}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.anoPoscomp.label" default="Ano Poscomp" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${avaliacaoInstance?.anoPoscomp}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.cargoFuncoes.label" default="Cargo Funcoes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "cargoFuncoes")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.empresaInstituicao.label" default="Empresa Instituicao" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "empresaInstituicao")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.estudoTempoIntegral.label" default="Estudo Tempo Integral" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "estudoTempoIntegral")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.inscricao.label" default="Inscricao" /></td>
                            
                            <td valign="top" class="value"><g:link controller="inscricao" action="show" id="${avaliacaoInstance?.inscricao?.id}">${avaliacaoInstance?.inscricao?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.sabeProgramar.label" default="Sabe Programar" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "sabeProgramar")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.solicitaBolsa.label" default="Solicita Bolsa" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "solicitaBolsa")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.vinculoEmpregaticio.label" default="Vinculo Empregaticio" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "vinculoEmpregaticio")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="avaliacao.vinculoPICD.label" default="Vinculo PICD" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: avaliacaoInstance, field: "vinculoPICD")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${avaliacaoInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
