//
//  main.swift
//  Exefixacao
//
//  Created by Usuário Convidado on 24/03/25.
//

import Foundation

var enfermeiraUm = Enfermeira()
enfermeiraUm.nome = "Vania Souza"
enfermeiraUm.salario = 2500.50
enfermeiraUm.plantao = true
enfermeiraUm.coren = 123445

print(">>>>> Enfermeira um <<<<<")
print(enfermeiraUm.toString())

var enfermeiraDois = Enfermeira(nome:"Janaina Silva", salario: 3500.34, plantao: false, coren:7891023)

print("\n\n>>>>> Enfermeira dois <<<<<")
print(enfermeiraDois.toString())
enfermeiraDois.baterPonto()
enfermeiraDois.aplicarMedicamento(paciente: "Carlos Souza", medicamento: "Dipirona")
print("O paciente está com hiperglicemia? \(enfermeiraDois.isHiperglicemia(indiceGlicemico: 126) ? "Sim" : "Não")")
print(enfermeiraDois.aferirPressaoArterial(pressaoSistolica: 135))
print("A temperatura do paciente é: \(enfermeiraDois.medirTemperatura())")



