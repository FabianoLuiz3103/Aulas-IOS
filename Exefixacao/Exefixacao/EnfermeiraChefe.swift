//
//  EnfermeiraChefe.swift
//  Exefixacao
//

import Cocoa

class EnfermeiraChefe: Enfermeira {
    
    var qtdEnfermeiras:Int
    
    override init() {
        qtdEnfermeiras = 0
        super.init()
    }
    init(nome: String, salario: Double, plantao: Bool, coren: Int, qtdEnfermeiras: Int) {
        self.qtdEnfermeiras = qtdEnfermeiras
        super.init(nome: nome, salario: salario, plantao: plantao, coren: coren)
        
    }
    
    func autorizar(){
        print("Autorizando o procedimento")
    }
}
