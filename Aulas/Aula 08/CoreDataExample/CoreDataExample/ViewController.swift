//
//  ViewController.swift
//  CoreDataExample
//
//  Created by Hilton Pintor Bezerra Leite on 31/07/2018.
//  Copyright © 2018 Hilton Pintor Bezerra Leite. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    var appDelegate: AppDelegate?
    var context: NSManagedObjectContext?
    var pessoas: [NSManagedObject] = []
    
    @IBOutlet weak var pessoaTableView: UITableView!
    
    @IBAction func tapAddButton(_ sender: Any) {
        self.savePessoa(nome: "Hilton")
    }
    
    @IBAction func tapFetchButton(_ sender: Any) {
        self.fetchPessoas()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.appDelegate = UIApplication.shared.delegate as? AppDelegate
        self.context = self.appDelegate?.persistentContainer.viewContext
        
        self.pessoaTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.fetchPessoas()
    }
    
    
    func savePessoa(nome: String) {
        let entity = NSEntityDescription.entity(forEntityName: "Pessoa",
                                                in: self.context!)
        
        let pessoa = NSManagedObject(entity: entity!,
                                     insertInto: self.context!)
        pessoa.setValue(nome, forKey: "nome")
        
        do {
            try self.context?.save()
            self.pessoas.append(pessoa)
            self.pessoaTableView.reloadData()
        } catch {
            fatalError("Erro na hora de salvar \(error.localizedDescription)")
        }
    }
    
    
    func fetchPessoas() {
        let request = NSFetchRequest<NSManagedObject>(entityName: "Pessoa")
        
        do {
            try self.pessoas = self.context!.fetch(request)
            self.pessoaTableView.reloadData()
        } catch {
            fatalError("Erro na hora do fetch \(error.localizedDescription)")
        }
    }
}


extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return self.pessoas.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "PessoaCell",
            for: indexPath) as? PessoaTableViewCell else {
                fatalError("Célula de tipo inesperado")
        }
        
        let currentPessoa = self.pessoas[indexPath.row]
        let name = currentPessoa.value(forKey: "nome") as? String
        cell.nameLabel.text = name
        
        return cell
    }
}

