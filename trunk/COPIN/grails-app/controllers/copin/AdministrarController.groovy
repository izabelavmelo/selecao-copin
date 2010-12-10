package copin

class AdministrarController {
	
    def media = {
		def chamadaInstance = Chamada.get(params.get("idChamada"))
		ChamadaController.calculaTodasAsMedias chamadaInstance
		def listaInscricao = Inscricao.list(params).findAll {chamada: chamadaInstance }
		return [inscricaoInstanceList: listaInscricao, inscricaoInstanceTotal: listaInscricao.size(), chamadaInstance : chamadaInstance]
	}
	
	def resultado = {
		params.sort = "mediaGeral"
		params.order = "desc"
		params.mostrarResultado = true
		def chamadaInstance = Chamada.get(params.get("idChamada"))
		def listaInscricao = Inscricao.list(params).findAll {chamada: chamadaInstance }
		render(view: "media", model: [inscricaoInstanceList: listaInscricao, inscricaoInstanceTotal: listaInscricao.size(), chamadaInstance : chamadaInstance, mostrarResultado : true])
	}
}
