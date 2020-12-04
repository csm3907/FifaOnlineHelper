//
//  MainViewController.swift
//  fifaOnlineHelper
//
//  Created by 60105277 on 2020/12/03.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: - IBOutlet 정의
    
    @IBOutlet weak var mainTableVIew: UITableView!
    
    // MARK: - Global Variable 지정
    
    var mainTableCellRows: [String] = ["선수 검색", "포럼"]
    
    //MARK: - UIViewController Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.title = "Main"
    }
    
}

// MARK: - TableDelegate

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainTableCellRows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "mainCell") else {
            return UITableViewCell()
        }
        
        return cell
    }
    
    
}

// MARK: - API Call 을 통한 데이터 받아오기.

extension MainViewController {
    func getNewPopularPlayer(page: Int, completion: @escaping (_ player: [Movie]?, _ error: String?) -> ()) {
        
    }
}
