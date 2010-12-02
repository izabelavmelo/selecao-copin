package copin

import com.primalworld.math.MathEvaluator;

class AvaliacaoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
	static redirecionar = UsuarioController.homepage
	
	static void calculaMedia(Avaliacao avaliacaoInstance){
		def inscricaoInstance = avaliacaoInstance.inscricao
		MathEvaluator math = new MathEvaluator(inscricaoInstance.chamada.formula)
		math.addVariable("n1", inscricaoInstance.mediaEscolar)
		math.addVariable("n2", inscricaoInstance.enade)
		math.addVariable("n3", inscricaoInstance.mediaEscolarMestrado)
		math.addVariable("n4", inscricaoInstance.enadeMestrado)
		math.addVariable("n5", inscricaoInstance.qualisInternacional + inscricaoInstance.qualisNacional + inscricaoInstance.outrasInternacionais + inscricaoInstance.outrasNacionais + inscricaoInstance.locaisERegionais)
		math.addVariable("n6", inscricaoInstance.semestresPesquisadorMestrado)
		math.addVariable("n7", inscricaoInstance.semestresMonitoria + inscricaoInstance.semestresMonitoria + inscricaoInstance.semestresEnsino)
		math.addVariable("n8", inscricaoInstance.semestresPibicIti)
		math.addVariable("n9", inscricaoInstance.semestresPET)
		math.addVariable("n10", inscricaoInstance.especializacaoLatuSensu > 0 ? 1.0 : 0.0)
		math.addVariable("n11", avaliacaoInstance.mestradoCCAfins ? 5.0 : 0.0)
		math.addVariable("n12", inscricaoInstance.resultadoPoscomp)
		math.addVariable("n13", avaliacaoInstance.mediaPosCOMP)
		math.addVariable("n14", avaliacaoInstance.cartasDeRecomendacao)
		
		avaliacaoInstance.mediaGeral = math.getValue()
	}

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
		def chamadaInstance = Chamada.get(params.get("idChamada"))
        if(chamadaInstance){
			params.max = Math.min(params.max ? params.int('max') : 10, 100)
			
			[avaliacaoInstanceList: Avaliacao.list(params), avaliacaoInstanceTotal: Avaliacao.count(), chamadaInstance:chamadaInstance]
		}else{
			redirect(url:redirecionar)
		}
    }

    def create = {
		def inscricaoInstance = Inscricao.get(params.get("idInscricao"))
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		
		if(inscricaoInstance){
			def avaliacaoInstance = new Avaliacao()
			avaliacaoInstance.inscricao = inscricaoInstance
			avaliacaoInstance.properties = params
			return [avaliacaoInstance: avaliacaoInstance, inscricaoInstance:inscricaoInstance, avaliacaoList: Avaliacao.list(params)]
	   
		}else{
			redirect(url:redirecionar)
		}
	}

    def save = {
        def avaliacaoInstance = new Avaliacao(params)
		def inscricaoInstance = Inscricao.get(params.get("idInscricao"))
		def avaliadorInstance = Usuario.get(params.get("idAvaliador"))
		avaliacaoInstance.avaliador = avaliadorInstance
		inscricaoInstance.properties = params
		avaliacaoInstance.inscricao = inscricaoInstance
		
		calculaMedia avaliacaoInstance
		
		if (avaliacaoInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.avaliacao.criada', args: [message(code: 'avaliacao.label', default: 'Avaliacao'), avaliacaoInstance.id])}"
            redirect(action: "show", id: avaliacaoInstance.id)
        }
        else {
            render(view: "create", model: [avaliacaoInstance: avaliacaoInstance])
        }
    }

    def show = {
        def avaliacaoInstance = Avaliacao.get(params.id)
        if (!avaliacaoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'avaliacao.label', default: 'Avaliacao'), params.id])}"
            redirect(action: "list")
        }
        else {
            [avaliacaoInstance: avaliacaoInstance]
        }
    }

    def edit = {
        def avaliacaoInstance = Avaliacao.get(params.id)
        if (!avaliacaoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'avaliacao.label', default: 'Avaliacao'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [avaliacaoInstance: avaliacaoInstance]
        }
    }

    def update = {
        def avaliacaoInstance = Avaliacao.get(params.id)
        if (avaliacaoInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (avaliacaoInstance.version > version) {
                    
                    avaliacaoInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'avaliacao.label', default: 'Avaliacao')] as Object[], "Another user has updated this Avaliacao while you were editing")
                    render(view: "edit", model: [avaliacaoInstance: avaliacaoInstance])
                    return
                }
            }
            avaliacaoInstance.properties = params
			avaliacaoInstance.inscricao.properties = params
			calculaMedia avaliacaoInstance
            if (!avaliacaoInstance.hasErrors() && avaliacaoInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'avaliacao.label', default: 'Avaliacao'), avaliacaoInstance.id])}"
                redirect(action: "show", id: avaliacaoInstance.id)
            }
            else {
                render(view: "edit", model: [avaliacaoInstance: avaliacaoInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'avaliacao.label', default: 'Avaliacao'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def avaliacaoInstance = Avaliacao.get(params.id)
        if (avaliacaoInstance) {
            try {
                avaliacaoInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'avaliacao.label', default: 'Avaliacao'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'avaliacao.label', default: 'Avaliacao'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'avaliacao.label', default: 'Avaliacao'), params.id])}"
            redirect(action: "list")
        }
    }
}
