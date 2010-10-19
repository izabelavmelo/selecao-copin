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
		
		if(!senhaUsuario){
			senhaUsuario = ""
		}
		
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
        def usuarioInstance = new Usuario(params)
        if (usuarioInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.nome])}"
			
			sendMail {
				from "copin@gmail.com"
				to usuarioInstance.email
				subject "Confirmação de cadastro COPIN"
				body """
 Para confirmar o cadastro clique no link abaixo.
 http://localhost:8080/COPIN/usuario/confirmar?code=""" + usuarioInstance.hashCPF.replace('+', '%2B')
 }
			
            render(view: "confirmacao", model: [usuarioInstance: usuarioInstance])
			
        }
        else {
            render(view: "create", model: [usuarioInstance: usuarioInstance])
        }
		
    }

    def show = {
        def usuarioInstance = Usuario.get(params.id)
        if (!usuarioInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])}"
			redirect(action: "list")
        }
        else {
            [usuarioInstance: usuarioInstance]
        }
    }

	def perfil = {
		
		
	}
	
    def edit = {
        def usuarioInstance = Usuario.get(params.id)
		System.out.println(params.id);
        if (usuarioInstance) {
			return [usuarioInstance: usuarioInstance]
        }
        else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])}"
			redirect(action: "perfil")
        }
    }

    def update = {
        def usuarioInstance = Usuario.get(params.id)
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
        def usuarioInstance = Usuario.get(params.id)
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
	
	def confirmar = {
		
		def code = params["code"]
		if(!code){
			code = ""
		}
		def usuario = Usuario.findByHashCPF(code)
		if(usuario){
			render(usuario.nome + " ativo")
		}else{
			render("nao existe o codigo")
		}		
	}
}
