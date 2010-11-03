package copin

import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

class InscricaoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [inscricaoInstanceList: Inscricao.list(params), inscricaoInstanceTotal: Inscricao.count()]
    }

	def uploadFileData = { todo ->
		if (request instanceof MultipartHttpServletRequest) {
		   MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;
		   CommonsMultipartFile file = (CommonsMultipartFile)multiRequest.getFile("documentos");
		   // Save the object items.
		   todo.fileName = file.originalFilename
		   todo.contentType = file.contentType
		   todo.associatedFile = file.bytes
		}
  }
	
    def create = {
        def inscricaoInstance = new Inscricao()
        inscricaoInstance.properties = params
        return [inscricaoInstance: inscricaoInstance]
    }

    def save = {
        def inscricaoInstance = new Inscricao(params)
        if (inscricaoInstance.save(flush: true)) {
            flash.message = "${message(code: 'inscricao.confirmacao.ok', args: [message(code: 'inscricao.label', default: 'Inscricao'), inscricaoInstance.id])}"
            redirect(action: "show", id: inscricaoInstance.id)
        }
        else {
            render(view: "create", model: [inscricaoInstance: inscricaoInstance])
        }
    }

    def show = {
        def inscricaoInstance = Inscricao.get(params.id)
        if (!inscricaoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'inscricao.label', default: 'Inscricao'), params.id])}"
            redirect(action: "list")
        }
        else {
            [inscricaoInstance: inscricaoInstance]
        }
    }

    def edit = {
        def inscricaoInstance = Inscricao.get(params.id)
        if (!inscricaoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'inscricao.label', default: 'Inscricao'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [inscricaoInstance: inscricaoInstance]
        }
    }

    def update = {
        def inscricaoInstance = Inscricao.get(params.id)
        if (inscricaoInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (inscricaoInstance.version > version) {
                    
                    inscricaoInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'inscricao.label', default: 'Inscricao')] as Object[], "Another user has updated this Inscricao while you were editing")
                    render(view: "edit", model: [inscricaoInstance: inscricaoInstance])
                    return
                }
            }
            inscricaoInstance.properties = params
            if (!inscricaoInstance.hasErrors() && inscricaoInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'inscricao.label', default: 'Inscricao'), inscricaoInstance.id])}"
                redirect(action: "show", id: inscricaoInstance.id)
            }
            else {
                render(view: "edit", model: [inscricaoInstance: inscricaoInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'inscricao.label', default: 'Inscricao'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def inscricaoInstance = Inscricao.get(params.id)
        if (inscricaoInstance) {
            try {
                inscricaoInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'inscricao.label', default: 'Inscricao'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'inscricao.label', default: 'Inscricao'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'inscricao.label', default: 'Inscricao'), params.id])}"
            redirect(action: "list")
        }
    }
}
