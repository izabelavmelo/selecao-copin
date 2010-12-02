package copin

import com.primalworld.math.MathEvaluator;

class AvaliacaoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

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
/*		
		MathEvaluator math = new MathEvaluator(inscricaoInstance.chamada.formula)
		math.addVariable("n1", inscricaoInstance.mediaEscolar)
		math.addVariable("n2", inscricaoInstance.enade)
		math.addVariable("n3", inscricaoInstance.mediaEscolarMestrado)
		math.addVariable("n4", inscricaoInstance.enadeMestrado)
		N6 = Semestres concluidos como pesquisador com mestrado em projetos de pesquisa institucionais;
		N7 = Semestres concluidos de monitoria, de ensino (segundo grau, tecnico ou nivel superior) ou de experiencia profissional na area;
		N8 = Semestres concluidos de IC;
		N9 = Semestres concluidos de participacao de grupo PET;
		N10 = 1,0, se possui especializacao latu-sensu;
		N11 = 5,0, se possui mestrado em Ciencia da Computacao ou em areas afins definidas no Regulamento do Programa;
		N12 = Nota no POSCOMP;
		N13 = Media do POSCOMP no ano referente a N12;
		N14 = Media de pontuacao nas cartas de recomendacao
	*/
		
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
