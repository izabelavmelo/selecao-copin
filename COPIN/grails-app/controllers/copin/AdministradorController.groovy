package copin

class AdministradorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [administradorInstanceList: Administrador.list(params), administradorInstanceTotal: Administrador.count()]
    }
	
	def login = {
		
		def loginAdmin = params.username
		def senhaAdmin = params.senha
		
		if(!senhaAdmin){
			senhaAdmin = ""
		}
		
		def administrador = Administrador.findByLoginAndHashSenha(loginAdmin, senhaAdmin.encodeAsPassword())
		
		if(administrador){
			if(administrador.ativo){
				session["administrador"] = administrador
				redirect(action:"perfil")
			}else{
			flash.message = "${message(code: 'usuario.login.inativo', args: [message(code: 'usuario.label', default: 'Usuario'), usuario.nome])}"
			redirect(url:"http://localhost:8080/COPIN")
			}
		}else{
		flash.message = "${message(code: 'usuario.login.invalido')}"
		redirect(url:"http://localhost:8080/COPIN")
		}
	}
	
	def logout = {
		
		session["administrador"] = null
		redirect(url:"http://localhost:8080/COPIN")
		
	}

    def create = {
        def administradorInstance = new Administrador()
        administradorInstance.properties = params
        return [administradorInstance: administradorInstance]
    }

    def save = {
        def administradorInstance = new Administrador(params)
        if (administradorInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.createAdmin.message', args: [message(code: 'administrador.label', default: 'Administrador'), administradorInstance.id])}"
            redirect(url:"http://localhost:8080/COPIN")
        }
        else {
            render(view: "create", model: [administradorInstance: administradorInstance])
        }
    }
	
	def perfil = {
		
		def adminInstance = session["administrador"]
		
		if(adminInstance){
			[adminInstance: adminInstance]
		}else{
			redirect(url:"http://localhost:8080/COPIN")
		}
		
	}

    def show = {
        def administradorInstance = Administrador.get(params.id)
        if (!administradorInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'administrador.label', default: 'Administrador'), params.id])}"
            redirect(action: "list")
        }
        else {
            [administradorInstance: administradorInstance]
        }
    }

    def edit = {
        def administradorInstance = Administrador.get(params.id)
        if (!administradorInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'administrador.label', default: 'Administrador'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [administradorInstance: administradorInstance]
        }
    }

    def update = {
        def administradorInstance = Administrador.get(params.id)
        if (administradorInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (administradorInstance.version > version) {
                    
                    administradorInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'administrador.label', default: 'Administrador')] as Object[], "Another user has updated this Administrador while you were editing")
                    render(view: "edit", model: [administradorInstance: administradorInstance])
                    return
                }
            }
            administradorInstance.properties = params
            if (!administradorInstance.hasErrors() && administradorInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'administrador.label', default: 'Administrador'), administradorInstance.id])}"
                redirect(action: "show", id: administradorInstance.id)
            }
            else {
                render(view: "edit", model: [administradorInstance: administradorInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'administrador.label', default: 'Administrador'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def administradorInstance = Administrador.get(params.id)
        if (administradorInstance) {
            try {
                administradorInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'administrador.label', default: 'Administrador'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'administrador.label', default: 'Administrador'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'administrador.label', default: 'Administrador'), params.id])}"
            redirect(action: "list")
        }
    }
}
