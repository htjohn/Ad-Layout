//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class ButtonMenu: UIView {
    @IBOutlet var heartButton: UIButton!
    @IBOutlet var commentButton: UIButton!
    @IBOutlet var shareButton: UIButton!
    @IBOutlet var saveButton: UIButton!
    
    //Assume that code has been setup for ButtonMenu
}

class AdHeaderView: UIView {
    @IBOutlet var profileImageVIew: UIImageView!
    @IBOutlet var headerTitleLabel: UILabel!
    @IBOutlet var headerDescriptionLabel: UILabel!
    
    //Assume that code has been setup for HeaderView
}

class AdFooterView: UIView {
    @IBOutlet var profileImageVIew: UIImageView!
    //Assume that code has been setup for HeaderView
}

class AdContentView: UIView {
    @IBOutlet var buttonMenu: ButtonMenu!
    //Assume that code has been setup for HeaderView
}

class MyViewController : UIViewController {
    
    lazy var headerView: AdHeaderView = {
         let view = AdHeaderView()
        view.backgroundColor = .brown
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var footerView: AdFooterView = {
        let view = AdFooterView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var contentView: AdContentView = {
        let view = AdContentView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var verticalStack: UIStackView = {
        let verticalStack = UIStackView()
        return verticalStack
    }()
    
    override func loadView() {
        headerView.heightAnchor.constraint(equalToConstant: 10).isActive = true
        contentView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        footerView.heightAnchor.constraint(equalToConstant: 10).isActive = true
        
        verticalStack.addArrangedSubview(headerView)
        verticalStack.addArrangedSubview(contentView)
        verticalStack.addArrangedSubview(footerView)
        self.view.addSubview(verticalStack)
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
