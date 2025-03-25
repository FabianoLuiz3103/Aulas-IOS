//
//  Enfermeira.swift
//  Exefixacao
//

import Foundation

class Enfermeira: Operacional{
    
    var nome:String
    var salario:Double
    var plantao:Bool
    var coren:Int
    
    init() {
        self.nome = ""
        self.salario = 0.0
        self.plantao = false
        self.coren = 0
    }
    
    init(nome: String, salario: Double, plantao: Bool, coren: Int) {
        self.nome = nome
        self.salario = salario
        self.plantao = plantao
        self.coren = coren
    }
    
    func validar() {
        print("Sempre checar o nome do paciente e nascimento")
    }
    
    func toString()-> String {
        return "Nome: \(self.nome)\n Salário: R$\(self.salario)\n Plantão: \(self.plantao)\n Coren: \(self.coren)"
    }
    
    func baterPonto(){
        print(self.plantao ? "Ponto batido. Até logo \(self.nome)" : "Ponto batido. Seja bem vinda \(self.nome)")
    }
    
    func aplicarMedicamento(paciente: String, medicamento: String){
        print("A enfermeira \(self.nome) está aplicando \(medicamento) no paciente \(paciente)")
    }
    
    //Overload
    func aplicarMedicamento(medicamento: String){
        print("A enfermeira \(self.nome) está aplicando \(medicamento)")
    }
    
    func isHiperglicemia(indiceGlicemico: Float) -> Bool {
        return indiceGlicemico >= 126
    }
    
    func aferirPressaoArterial(pressaoSistolica: Int) -> String{
        if pressaoSistolica < 120 {
            return "Sua pressão está ótima!"
        } else if pressaoSistolica >= 120 && pressaoSistolica < 130 {
            return "Sua pressão está normal!"
        } else if pressaoSistolica >= 130 && pressaoSistolica < 140 {
            return "Pré hipertensão"
        }else if pressaoSistolica >= 140 && pressaoSistolica < 160{
            return "Hipertensão stg 1"
        }else if pressaoSistolica >= 160 && pressaoSistolica < 180{
            return "Hipertensão stg 2"
        }else{
            return "Hipertensão stg 3"
        }
    }
    
    func medirTemperatura() -> Int {
        let temperaturaRandom = Int.random(in: 34..<40)
        return temperaturaRandom
    }
    
    
}
