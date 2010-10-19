package copin

class CriterioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [criterioInstanceList: Criterio.list(params), criterioInstanceTotal: Criterio.count()]
    }

    def create = {
        def criterioInstance = new Criterio()
        criterioInstance.properties = params
        return [criterioInstance: criterioInstance]
    }

    def save = {
        def criterioInstance = new Criterio(params)
        if (criterioInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'criterio.label', default: 'Criterio'), criterioInstance.id])}"
            redirect(action: "show", id: criterioInstance.id)
        }
        else {
            render(view: "create", model: [criterioInstance: criterioInstance])
        }
    }

    def show = {
        def criterioInstance = Criterio.get(params.id)
        if (!criterioInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'criterio.label', default: 'Criterio'), params.id])}"
            redirect(action: "list")
        }
        else {
            [criterioInstance: criterioInstance]
        }
    }

    def edit = {
        def criterioInstance = Criterio.get(params.id)
        if (!criterioInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'criterio.label', default: 'Criterio'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [criterioInstance: criterioInstance]
        }
    }

    def update = {
        def criterioInstance = Criterio.get(params.id)
        if (criterioInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (criterioInstance.version > version) {
                    
                    criterioInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'criterio.label', default: 'Criterio')] as Object[], "Another user has updated this Criterio while you were editing")
                    render(view: "edit", model: [criterioInstance: criterioInstance])
                    return
                }
            }
            criterioInstance.properties = params
            if (!criterioInstance.hasErrors() && criterioInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'criterio.label', default: 'Criterio'), criterioInstance.id])}"
                redirect(action: "show", id: criterioInstance.id)
            }
            else {
                render(view: "edit", model: [criterioInstance: criterioInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'criterio.label', default: 'Criterio'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def criterioInstance = Criterio.get(params.id)
        if (criterioInstance) {
            try {
                criterioInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'criterio.label', default: 'Criterio'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'criterio.label', default: 'Criterio'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'criterio.label', default: 'Criterio'), params.id])}"
            redirect(action: "list")
        }
    }
}
