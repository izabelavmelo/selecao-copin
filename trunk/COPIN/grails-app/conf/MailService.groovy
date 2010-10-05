import org.apache.commons.mail.SimpleEmail

class MailService {
	
	boolean transactional = false
	// Inclui as configura��es do servi�o no pr�prio servi�o apenas por comodidade para este post
	String host= "mail.itasks.com.br"
	String username = "seu_user_name_aqui"
	String password = "senhaquente"
	String from = "eu@eu.com"
	Integer port = 465
	
	def send(String subject, String msg, String to) {
		SimpleEmail email = new SimpleEmail()
		email.setHostName(host)
		email.addTo(to)
		email.setFrom(from)
		email.setSubject(subject)
		email.setMsg(msg)
		//M�todo de autentica��o
		email.setAuthentication(username,password)
		// Caso precise definir a porta do seu servidor smtp
		email.setSmtpPort(port)
		// Envia o email
		email.send()
	}
}
