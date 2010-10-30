
<%@ page import="copin.Inscricao" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
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
                            <td valign="top" class="name"><g:message code="inscricao.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.alunoEspecial.label" default="Aluno Especial" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "alunoEspecial")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.anoDeConclusao.label" default="Ano De Conclusao" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${inscricaoInstance?.anoDeConclusao}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.anoDeConclusaoMestrado.label" default="Ano De Conclusao Mestrado" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${inscricaoInstance?.anoDeConclusaoMestrado}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.anoPoscomp.label" default="Ano Poscomp" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${inscricaoInstance?.anoPoscomp}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.arquivosDiferencais.label" default="Arquivos Diferencais" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "arquivosDiferencais")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.cargoFuncoes.label" default="Cargo Funcoes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "cargoFuncoes")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.cartaDeReferencia1.label" default="Carta De Referencia1" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "cartaDeReferencia1")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.cartaDeReferencia2.label" default="Carta De Referencia2" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "cartaDeReferencia2")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.cartaDeReferencia3.label" default="Carta De Referencia3" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "cartaDeReferencia3")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.copiaCpf.label" default="Copia Cpf" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "copiaCpf")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.copiaIdentidade.label" default="Copia Identidade" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "copiaIdentidade")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.curriculumVitae.label" default="Curriculum Vitae" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "curriculumVitae")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.curso.label" default="Curso" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "curso")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.cursoInscricao.label" default="Curso Inscricao" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "cursoInscricao")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.cursoMestrado.label" default="Curso Mestrado" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "cursoMestrado")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.diplomaDeGraduacao.label" default="Diploma De Graduacao" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "diplomaDeGraduacao")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.documentosEleitorais.label" default="Documentos Eleitorais" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "documentosEleitorais")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.documentosMilitares.label" default="Documentos Militares" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "documentosMilitares")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.empresaInstituicao.label" default="Empresa Instituicao" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "empresaInstituicao")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.enade.label" default="Enade" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "enade")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.enadeMestrado.label" default="Enade Mestrado" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "enadeMestrado")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.especializacaoLatuSensu.label" default="Especializacao Latu Sensu" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "especializacaoLatuSensu")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.estudoTempoIntegral.label" default="Estudo Tempo Integral" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "estudoTempoIntegral")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.foto3x4.label" default="Foto3x4" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "foto3x4")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.historicosEscolares.label" default="Historicos Escolares" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "historicosEscolares")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.instituicao.label" default="Instituicao" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "instituicao")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.instituicaoMestrado.label" default="Instituicao Mestrado" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "instituicaoMestrado")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.linguagens.label" default="Linguagens" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "linguagens")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.locaisERegionais.label" default="Locais ER egionais" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "locaisERegionais")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.mediaDisciplinasEspeciais.label" default="Media Disciplinas Especiais" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "mediaDisciplinasEspeciais")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.mediaEscolar.label" default="Media Escolar" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "mediaEscolar")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.mediaEscolarMestrado.label" default="Media Escolar Mestrado" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "mediaEscolarMestrado")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.nomeEmpresa.label" default="Nome Empresa" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "nomeEmpresa")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.numeroInscricaoPoscomp.label" default="Numero Inscricao Poscomp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "numeroInscricaoPoscomp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.outrasInternacionais.label" default="Outras Internacionais" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "outrasInternacionais")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.outrasNacionais.label" default="Outras Nacionais" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "outrasNacionais")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.primeiraOpcaoProjeto.label" default="Primeira Opcao Projeto" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "primeiraOpcaoProjeto")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.qualisInternacional.label" default="Qualis Internacional" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "qualisInternacional")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.qualisNacional.label" default="Qualis Nacional" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "qualisNacional")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.quantasDisciplinasEspeciais.label" default="Quantas Disciplinas Especiais" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "quantasDisciplinasEspeciais")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.quartaOpcaoProjeto.label" default="Quarta Opcao Projeto" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "quartaOpcaoProjeto")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.resultadoDoPoscomp.label" default="Resultado Do Poscomp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "resultadoDoPoscomp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.resultadoPoscomp.label" default="Resultado Poscomp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "resultadoPoscomp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.sabeProgramar.label" default="Sabe Programar" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "sabeProgramar")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.segundaOpcaoProjeto.label" default="Segunda Opcao Projeto" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "segundaOpcaoProjeto")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.semestresAtuandoNaArea.label" default="Semestres Atuando Na Area" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "semestresAtuandoNaArea")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.semestresEnsino.label" default="Semestres Ensino" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "semestresEnsino")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.semestresMonitoria.label" default="Semestres Monitoria" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "semestresMonitoria")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.semestresPET.label" default="Semestres PET" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "semestresPET")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.semestresPesquisadorMestrado.label" default="Semestres Pesquisador Mestrado" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "semestresPesquisadorMestrado")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.semestresPibicIti.label" default="Semestres Pibic Iti" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "semestresPibicIti")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.solicitaBolsa.label" default="Solicita Bolsa" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "solicitaBolsa")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.terceiraOpcaoProjeto.label" default="Terceira Opcao Projeto" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "terceiraOpcaoProjeto")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.universidadePICD.label" default="Universidade PICD" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "universidadePICD")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.vinculoEmpregaticio.label" default="Vinculo Empregaticio" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "vinculoEmpregaticio")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="inscricao.vinculoPICD.label" default="Vinculo PICD" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: inscricaoInstance, field: "vinculoPICD")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${inscricaoInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
