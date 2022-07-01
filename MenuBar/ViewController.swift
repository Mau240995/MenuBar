//
//  ViewController.swift
//  MenuBar
//
//  Created by user217123 on 6/27/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Bienvenido"
        view.backgroundColor = .systemYellow
        navigationController?.navigationBar.tintColor = .label
       
        configureItems()
        
        let  nombre = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 500))
        nombre.text = "Mauricio Malvaez Moreno"
        nombre.font = UIFont(name: "Arial Rounded MT Bold", size: 26) // 3
        nombre.textAlignment = .center // 4
        nombre.textColor = .purple // 5
        view.addSubview(nombre)
        
        nombre.center = view.center
    //.background(LinearGradient(gradient: Gradient(colors: [.white,.red]),startPoint: .top,endPoint: .bottom).edgesIgnoingSafeArea(.all))
    }
    private func configureItems(){
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Siguiente", style: .done, target:self, action: #selector(didTapButton))
        
    }
    @objc func didTapButton(){
        let vc = UIViewController()
        vc.title = "Juguetes"
        vc.view.backgroundColor = .systemGreen
        vc.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Seleccionar", style: .done, target: self, action: #selector(didTapButon1))
        navigationController?.pushViewController(vc, animated: true)
        
    }
    @objc func didTapButon1(){
        let vc1 = UIViewController()
        vc1.title = "Juguetes"
        vc1.view.backgroundColor = .systemYellow
        vc1.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancelar", style: .done, target: self, action: nil)
        
        vc1.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Siguiente", style: .done, target: self, action: #selector(didTapButton2))
        
        navigationController?.pushViewController(vc1, animated: true)
        
    }
    @objc func didTapButton2(){
        let vc2 = UIViewController()
        vc2.title = "Bienvenido"
        vc2.view.backgroundColor = .systemYellow
        vc2.navigationItem.leftBarButtonItem = UIBarButtonItem()

        vc2.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Siguiente", style: .done, target: self, action: #selector(didTapButton))
        let  nombre = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 500))
        nombre.text = "Mauricio Malvaez Moreno"
        nombre.font = UIFont(name: "Arial Rounded MT Bold", size: 26) // 3
        nombre.textAlignment = .center // 4
        nombre.textColor = .purple // 5
        vc2.view.addSubview(nombre)
        nombre.center = view.center
        navigationController?.pushViewController(vc2, animated:   true)
    }
   

}

