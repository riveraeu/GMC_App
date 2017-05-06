import UIKit

@IBDesignable class MyButton: UIButton {
    
    //this init fires usually called, when storyboards UI objects created:
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupViews()
    }
    
    //This method is called during programmatic initialisation
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    
    func setupViews() {
        //your common setup goes here
        backgroundColor = UIColor.green
        layer.cornerRadius = 0.5 * bounds.size.width
        addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)

        
    }
    
    //required method to present changes in IB
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupViews()
    }
    
    func didTapButton(_ button: UIButton){
        print("test")
    }
}
