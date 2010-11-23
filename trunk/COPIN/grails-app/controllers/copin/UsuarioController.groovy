package copin

import java.util.Calendar;

class UsuarioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	static horasPraConfirmar = 2

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [usuarioInstanceList: Usuario.list(params), usuarioInstanceTotal: Usuario.count()]
    }
	
	def login = {
		
		def loginUsuario = params.username
		def senhaUsuario = params.senha
		
		if(!senhaUsuario){
			senhaUsuario = ""
		}
		
		def usuario = Usuario.findByLoginAndHashSenha(loginUsuario, senhaUsuario.encodeAsPassword())
			
		if(usuario){			
			if(usuario.ativo){
				session["usuario"] = usuario
				
				/* if(usuario.ehAdministrador){
					redirect(action:"perfilAdministrador")
				} */
				
				if(usuario.ehAvaliador){
					redirect(action:"perfilAvaliador")
				}
				else{
					redirect(action:"perfilAdministrador")
				}
				
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
		
		session["usuario"] = null
		redirect(url:"http://localhost:8080/COPIN")
		
	}
	

    def create = {
        def usuarioInstance = new Usuario()
        usuarioInstance.properties = params
        return [usuarioInstance: usuarioInstance]
    }
	
	def createAvaliador = {
		def usuarioInstance = new Usuario()
        usuarioInstance.properties = params
        return [usuarioInstance: usuarioInstance]
	}
	
	def saveAvaliador = {
		def usuarioInstance = new Usuario(params)
		
		if (usuarioInstance.save(flush: true)) {
			flash.message = "${message(code: 'default.created.avaliador', args: [message(code: 'usuario.label', default: 'Usuario'), usuarioInstance.id])}"

			def usuario = Usuario.findByLoginOrCpf(usuarioInstance.login, usuarioInstance.cpf)
			
			if(usuario){
				usuario.ativo = true
				usuario.ehAvaliador = true
			}

			redirect(action: "perfilAdministrador")
		}
		else {
			render(view: "createAvaliador", model: [usuarioInstance: usuarioInstance])
		}	
	}
	

    def save = {
        def usuarioInstance = new Usuario(params)
		usuarioInstance.ativo = false
		usuarioInstance.dataCadastro = Calendar.getInstance()
		
		def usuario = Usuario.findByLoginOrCpf(usuarioInstance.login, usuarioInstance.cpf)
		if(usuario){
			if(!usuario.ativo){
				usuario.dataCadastro.add(Calendar.HOUR_OF_DAY, horasPraConfirmar)
				if(Calendar.getInstance().before(usuario.dataCadastro)){
					usuario.dataCadastro.add(Calendar.HOUR_OF_DAY, horasPraConfirmar * -1)
				}else{
				usuario.delete(flush: true)
				}
			}
		}
		
		
        if (usuarioInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.nome])}"
			try{
			sendMail {
				from "copin@gmail.com"
				to usuarioInstance.email
				subject "[SELECAO COPIN]Confirme seu cadastro"
				body """
 Para confirmar o cadastro clique no link abaixo.
 http://localhost:8080/COPIN/usuario/confirmar?code=""" + usuarioInstance.hashCPF.replace('+', '%2B')
 }
			}catch (Exception e) {
				
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
		
		def usuarioInstance = session["usuario"]
		
		if(usuarioInstance){
			[usuarioInstance: usuarioInstance]
		}else{
			redirect(url:"http://localhost:8080/COPIN")
		}	
	}
	
	def perfilAdministrador = {
		def usuarioInstance = session["usuario"]
		
		if(usuarioInstance) {
			[usuarioInstance: usuarioInstance]
		}else{
			redirect(url:"http://localhost:8080/COPIN")
		}
	}
	
    def edit = {
        def usuarioInstance = Usuario.get(params.id)
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
				session.usuario = usuarioInstance
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
                redirect(action: "logout")
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
			if(!usuario.ativo){
				usuario.dataCadastro.add(Calendar.HOUR_OF_DAY, horasPraConfirmar)
				if(Calendar.getInstance().before(usuario.dataCadastro)){
					usuario.ativo = true
					flash.message = "${message(code: 'usuario.confirmacao.ativado', args: [message(code: 'usuario.label', default: 'Usuario'), usuario.nome])}"
				}else{
					usuario.delete(flush: true)
					flash.message = "${message(code: 'usuario.confirmacao.expirou', args: [message(code: 'usuario.label', default: 'Usuario'), usuario.nome])}"
				}
			}else{
			flash.message = "${message(code: 'usuario.confirmacao.ativo', args: [message(code: 'usuario.label', default: 'Usuario'), usuario.nome])}"
			}
			render(view: "confirmacao", model: [usuarioInstance: usuario])
		}else{
			flash.message = "${message(code: 'usuario.confirmacao.error')}"
			render(view: "confirmacao", model: [usuarioInstance: usuario])
		}		
	}
}
