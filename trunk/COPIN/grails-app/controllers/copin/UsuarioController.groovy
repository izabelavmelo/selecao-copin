package copin

class UsuarioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [usuarioInstanceList: Usuario.list(params), usuarioInstanceTotal: Usuario.count()]
    }
	
	def login = {
		
		def loginUsuario = params["login"]
		def senhaUsuario = params.senha
		
		def usuario = Usuario.findByLoginAndHashSenha(loginUsuario, senhaUsuario.encodeAsPassword())
		
		if(usuario){
			session["usuario"] = usuario
			redirect(action:"perfil")	
		}
		else{
			redirect(url:"http://localhost:8080/COPIN")		
		}
		
	}
	
	def logout = {
		
		session["usuario"] = null
		redirect(url:"http://localhost:8080/COPIN")
		
	}
	

    def create = {
        def usuarioInstance = new Usuario()
        usuarioInstance.properties = params
        return [usuarioInstance: usuarioInstance]
    }

    def save = {
        def usuarioInstance = session.getAt("usuario")
        if (usuarioInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.nome])}"
            render(view: "confirmacao", model: [usuarioInstance: usuarioInstance])
			
        }
        else {
            render(view: "create", model: [usuarioInstance: usuarioInstance])
        }
		
    }

    def show = {
        def usuarioInstance = session.getAt("usuario")
        if (!usuarioInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])}"
			redirect(action: "perfil")
        }
        else {
            [usuarioInstance: usuarioInstance]
        }
    }

	def perfil = {
		
		
	}
	
    def edit = {
        def usuarioInstance = session.getAt("usuario")
        if (usuarioInstance) {
			return [usuarioInstance: usuarioInstance]
        }
        else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])}"
			redirect(action: "perfil")
        }
    }

    def update = {
        def usuarioInstance = session.getAt("usuario")
        if (usuarioInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (usuarioInstance.version > version) {
                    
                    usuarioInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'usuario.label', default: 'Usuario')] as Object[], "Another user has updated this Usuario while you were editing")
                    render(view: "edit", model: [usuarioInstance: usuarioInstance])
                    return
                }
            }
            usuarioInstance.properties = params
            if (!usuarioInstance.hasErrors() && usuarioInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuarioInstance.id])}"
                redirect(action: "show", id: usuarioInstance.id)
            }
            else {
                render(view: "edit", model: [usuarioInstance: usuarioInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])}"
            redirect(action: "perfil")
        }
    }

    def delete = {
        def usuarioInstance = session.getAt("usuario")
        if (usuarioInstance) {
            try {
                usuarioInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])}"
            redirect(action: "list")
        }
    }
}
