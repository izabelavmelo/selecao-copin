package copin

class AtribuicaoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
		def chamadaInstance = Chamada.get(params.id)
		if(chamadaInstance){
			params.max = Math.min(params.max ? params.int('max') : 10, 100)
			[atribuicaoInstanceList: Atribuicao.list(params), atribuicaoInstanceTotal: Atribuicao.count(), chamadaInstance: chamadaInstance]
		}else {
			redirect(url:"http://localhost:8080/COPIN/usuario/perfil")
		}
    }

    def create = {
        def atribuicaoInstance = new Atribuicao()
		def chamadaInstance = Chamada.get(params.id)
		def avaliadoresList = Usuario.findAllByEhAvaliador("true")
		
		
		if(chamadaInstance){
			atribuicaoInstance.properties = params
			return [atribuicaoInstance: atribuicaoInstance, chamadaInstance:chamadaInstance, avaliadoresList:avaliadoresList]
		}
		else{
			redirect(url:"http://localhost:8080/COPIN/usuario/perfil")
		}
    }

    def save = {
		def chamadaInstance = Chamada.get(params.idChamada)
        def atribuicaoInstance = new Atribuicao(params)
		
		atribuicaoInstance.chamada = chamadaInstance
		
		def avaliadoresDefinidosList = Atribuicao.findWhere(chamada:chamadaInstance)
		
		def usuario = avaliadoresDefinidosList.findWhere(usuarios:atribuicaoInstance.usuarios)
		
		if(!usuario){
			if (atribuicaoInstance.save(flush: true)) {
				flash.message = "${message(code: 'default.define.avaliador', args: [message(code: 'atribuicao.label', default: 'Atribuicao'), atribuicaoInstance.id])}"
				redirect(action: "list", id: chamadaInstance.id)
			}
			else {
				render(view: "create", model: [atribuicaoInstance: atribuicaoInstance])
			}
		}else{
			flash.message = "${message(code: 'default.err.ja.definiu.avaliador', args: [message(code: 'atribuicao.label', default: 'Atribuicao'), atribuicaoInstance.id])}"
			redirect(action: "list", id: chamadaInstance.id)
		}
		
		
		
        
    }
	
	
	
    def show = {
        def atribuicaoInstance = Atribuicao.get(params.id)
        if (!atribuicaoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'atribuicao.label', default: 'Atribuicao'), params.id])}"
            redirect(action: "list")
        }
        else {
            [atribuicaoInstance: atribuicaoInstance]
        }
    }

    def edit = {
        def atribuicaoInstance = Atribuicao.get(params.id)
        if (!atribuicaoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'atribuicao.label', default: 'Atribuicao'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [atribuicaoInstance: atribuicaoInstance]
        }
    }

    def update = {
        def atribuicaoInstance = Atribuicao.get(params.id)
        if (atribuicaoInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (atribuicaoInstance.version > version) {
                    
                    atribuicaoInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'atribuicao.label', default: 'Atribuicao')] as Object[], "Another user has updated this Atribuicao while you were editing")
                    render(view: "edit", model: [atribuicaoInstance: atribuicaoInstance])
                    return
                }
            }
            atribuicaoInstance.properties = params
            if (!atribuicaoInstance.hasErrors() && atribuicaoInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'atribuicao.label', default: 'Atribuicao'), atribuicaoInstance.id])}"
                redirect(action: "show", id: atribuicaoInstance.id)
            }
            else {
                render(view: "edit", model: [atribuicaoInstance: atribuicaoInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'atribuicao.label', default: 'Atribuicao'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def atribuicaoInstance = Atribuicao.get(params.id)
		def chamadaInstance = Chamada.get(params.idChamada)
        if (atribuicaoInstance && chamadaInstance) {
            try {
                atribuicaoInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deletou.definicao.avaliador', args: [message(code: 'atribuicao.label', default: 'Atribuicao'), params.id])}"
				redirect(action: "list", id:chamadaInstance.id)
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'atribuicao.label', default: 'Atribuicao'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'atribuicao.label', default: 'Atribuicao'), params.id])}"
            redirect(action: "list", id:idChamada)
        }
    }
}
