//
//  CivilizationsViewController.swift
//  AgeViperVTwo
//
//  Created by karma on 5/17/22.
//
//

import UIKit

class CivilizationsViewController: UIViewController {
    
    // MARK: Properties
    
    var presenter: CivilizationsModuleInterface?
    var civs: [CivilizationStructure] = []
    
    // MARK: IBOutlets
    @IBOutlet weak var civilizationTableView: UITableView!
    
    // MARK: VC's Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        presenter?.fetchCiv()
    }
    
    // MARK: IBActions
    
    // MARK: Other Functions
    
    private func setup() {
        // all setup should be done here
        
        setupTableView()
//        view.backgroundColor = .red
    }
    private func setupTableView() {
        civilizationTableView.delegate = self
        civilizationTableView.dataSource = self
    }
}

// MARK: CivilizationsViewInterface
extension CivilizationsViewController: CivilizationsViewInterface {
    func updateTableView(with civStructure: [CivilizationStructure]) {
        civs = civStructure
        DispatchQueue.main.async {
            self.civilizationTableView.reloadData()
        }
    }
    
    func displayFetchingError(with error: Error) {
        print(error)
    }
    
    
}

extension CivilizationsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.civTapped(civ: civs[indexPath.row])
    }
}

extension CivilizationsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        civs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = civs[indexPath.row].name
        cell.selectionStyle = .none
        return cell
    }
    
    
}
