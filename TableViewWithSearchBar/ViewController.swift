//
//  ViewController.swift
//  TableViewWithSearchBar
//
//  Created by muhammad hassan on 06/03/2022.
//

import UIKit

class ViewController: UIViewController, UISearchControllerDelegate, UISearchBarDelegate {
  
    var languages = ["Swift", "Java", "C++", "Python", "Ruby", "Sindhi", "Sinskirit", "punjabi"]
    var languages2 = [ "Ruby", "Sindhi", "Sinskirit", "punjabi","Swift", "Java", "C++", "Python"]


    @IBOutlet weak var tableView: UITableView!
    let Search = UISearchController(searchResultsController: nil)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        searchbaesetup()
        searchData()
        
    }
    
    func searchData ()
    {
         languages = ["Swift", "Java", "C++", "Python", "Ruby", "Sindhi", "Sinskirit", "punjabi"]
         languages2 = [ "Ruby", "Sindhi", "Sinskirit", "punjabi","Swift", "Java", "C++", "Python"]

    }
    private func searchbaesetup()
    {
        Search.searchResultsUpdater = self
        Search.searchBar.delegate = self
        navigationItem.searchController = Search
    }
}

extension ViewController: UISearchResultsUpdating
{
    public func updateSearchResults(for searchController: UISearchController) {
        guard let searchtext = searchController.searchBar.text  else {return}
        if searchtext == ""
        {  searchData() }
        else
        {   searchData()
            languages = languages.filter
            { $0.contains(searchtext) }
        }
        tableView.reloadData()

    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {   return languages.count    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.lblName.text = languages[indexPath.row]
        cell.lblFname.text = languages2[indexPath.row]
        return cell
        
    }
}

