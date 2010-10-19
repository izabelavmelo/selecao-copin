package copin

class ChamadaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	def criterios = Criterio.executeQuery("select nome from Criterio")
	
    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [chamadaInstanceList: Chamada.list(params), chamadaInstanceTotal: Chamada.count()]
    }

    def create = {
        def chamadaInstance = new Chamada()
        chamadaInstance.properties = params
        return [chamadaInstance: chamadaInstance, criterios:criterios]
    }

    def save = {
        def chamadaInstance = new Chamada(params)
        if (chamadaInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.message.chamada', args: [message(code: 'chamada.label', default: 'Chamada'), chamadaInstance.id])}"
            redirect(action: "perfil", controller: "usuario")
        }
        else {
            render(view: "create", model: [chamadaInstance: chamadaInstance])
        }
    }

    def show = {
        def chamadaInstance = Chamada.get(params.id)
        if (!chamadaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'chamada.label', default: 'Chamada'), params.id])}"
            redirect(action: "list")
        }
        else {
            [chamadaInstance: chamadaInstance]
        }
    }

    def edit = {
        def chamadaInstance = Chamada.get(params.id)
        if (!chamadaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'chamada.label', default: 'Chamada'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [chamadaInstance: chamadaInstance]
        }
    }

    def update = {
        def chamadaInstance = Chamada.get(params.id)
        if (chamadaInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (chamadaInstance.version > version) {
                    
                    chamadaInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'chamada.label', default: 'Chamada')] as Object[], "Another user has updated this Chamada while you were editing")
                    render(view: "edit", model: [chamadaInstance: chamadaInstance])
                    return
                }
            }
            chamadaInstance.properties = params
            if (!chamadaInstance.hasErrors() && chamadaInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'chamada.label', default: 'Chamada'), chamadaInstance.id])}"
                redirect(action: "show", id: chamadaInstance.id)
            }
            else {
                render(view: "edit", model: [chamadaInstance: chamadaInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'chamada.label', default: 'Chamada'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def chamadaInstance = Chamada.get(params.id)
        if (chamadaInstance) {
            try {
                chamadaInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'chamada.label', default: 'Chamada'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'chamada.label', default: 'Chamada'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'chamada.label', default: 'Chamada'), params.id])}"
            redirect(action: "list")
        }
    }
}
