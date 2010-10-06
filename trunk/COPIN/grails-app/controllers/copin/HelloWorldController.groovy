package copin

class HelloWorldController {

    def index = {
		render "Hello World!"
		sendMail {
			   from "nome@gmail.com"
			   to "delanohelio@gmail.com"
			   subject "Enviando e-mails com Grails"
			   body """
				  E ai pessoal,
				  Este e-mail foi enviado diretamente de um controller da minha
				  aplicação Grails usando o Mail Plugin.
			 
				  Até mais."""
			}
			
		}
}
