//
//  ViewController.swift
//  TableViews
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    private var myCountries:[Pais]?
    
    private let myCountries2 = ["España", "México", "Perú", "Colombia", "Argentina", "EEUU", "Francia", "Italia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tableView.backgroundColor = .red
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
        
        recuperarDatos()
        
    }
    
    @IBAction func add(_ sender: Any) {
        print("Añadir Datos")
        
        // Crear alerta
        let alert = UIAlertController(title: "Agregar País", message: "Añade un país nuevo", preferredStyle: .alert)
        alert.addTextField()
        
        // Crear y configurar botón de alerta
        let botonAlerta = UIAlertAction(title: "Añadir", style: .default){(action) in
            //Recuperar textField de la alerta
            let textField = alert.textFields![0]
            
            //Crear objeto País
            let nuevoPais = Pais(context: self.context)
            nuevoPais.nombre = textField.text
            
            //Guardar información (Añade block do-try-cath)
            try! self.context.save()
            
            // Refrescar información en tableview
            self.recuperarDatos()
        }
        // Añadir botón a la alerta y mostrar la alerta
        alert.addAction(botonAlerta)
        self.present(alert, animated: true, completion: nil)
    }
    
    func recuperarDatos() {
        do {
            self.myCountries = try context.fetch(Pais.fetchRequest())
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
        }
        catch {
            print("Error recuperando datos")
        }
    }
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Celdas Simples"
        }
        return "Celdas Custom"
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        // Crear acción de eliminar
        let accionEliminar = UIContextualAction(style: .destructive, title: "Eliminar"){(action,view,completionHandler) in
            // Cual pais se eliminará?
            let paisEliminar = self.myCountries![indexPath.row]
            
            // Eliminar pais
            self.context.delete(paisEliminar)
            
            // Guardar el cmabio de información
            try! self.context.save()
            
            // Recargar datos
            self.recuperarDatos()
        }
        return UISwipeActionsConfiguration(actions: [accionEliminar])
    }
    
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 0 {
            return "footer para celdas simples"
        }
        return "Footer para celdas complejas"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCountries!.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 50
        }
        return UITableView.automaticDimension
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            
            var cell = tableView.dequeueReusableCell(withIdentifier: "mycell")
            if cell == nil{
                cell = UITableViewCell(style: .default, reuseIdentifier: "mycell")
                cell?.backgroundColor = .gray
                cell?.textLabel?.font = UIFont.systemFont(ofSize: 20)
                cell?.accessoryType = .disclosureIndicator
            }
            cell!.textLabel?.text = myCountries![indexPath.row].nombre
            return cell!
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycustomcell", for: indexPath) as? MyCustomTableViewCell
        
        cell?.myFirstLabel.text = String(indexPath.row + 1)
        cell?.mySecondLabel.text = myCountries![indexPath.row].nombre
        
        if indexPath.row == 2 {
            cell!.mySecondLabel.text = "Oh yeah, holiday, todo el dia sin parar. Que idea, gran idea. Vamonos a programar"
        }
        
        return cell!
        
    }
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Que pais vamos a editar
        let paisEditar = self.myCountries![indexPath.row]
        
        //Crear alerta
        let alert = UIAlertController(title: "Editar Pais", message: "Edita el pais", preferredStyle: .alert)
        alert.addTextField()
        
        //Recuperar nombre de pais actual de la tabla y agregarla al textField de la alerta
        let textField = alert.textFields![0]
        
        textField.text = paisEditar.nombre
        
        // Crear y configurar boton de alerta
        let botonAlerta = UIAlertAction(title: "Editar", style: .default){ (action) in
            
            //Recuperar textField de la alerta
            let textField = alert.textFields![0]
            
            //Editar pais actual con lo que esté en el textfield
            paisEditar.nombre = textField.text
            
            // Guardar información (Añade block do-try-cath)
            try! self.context.save()
            
            // Refrescar inforamción en tableview
            self.recuperarDatos()
        }
        // Añadir boton a la alerta y mostrar la alerta
        alert.addAction(botonAlerta)
        self.present(alert, animated: true, completion: nil)
        
        print(myCountries![indexPath.row])
    }
    
}
