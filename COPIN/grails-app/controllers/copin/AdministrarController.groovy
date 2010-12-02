package copin

class AdministrarController {

    def index = {
		def chamadaInstance = Chamada.get(params.idChamada)
		def avaliacaoList =  Avaliacao.list()
		 
	}
}
