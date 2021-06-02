import UIKit

class ViewController: UIViewController {
  let rangeSlider = RangeSlider(frame: .zero)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    rangeSlider.backgroundColor = .white
    view.addSubview(rangeSlider)
    rangeSlider.addTarget(self, action: #selector(rangeSliderValueChanged(_:)),
                          for: .valueChanged)

  }
  
  override func viewDidLayoutSubviews() {
    let margin: CGFloat = 20
    let width = view.bounds.width - 2 * margin
    let height: CGFloat = 30
    
    rangeSlider.frame = CGRect(x: 0, y: 0,
                               width: width, height: height)
    rangeSlider.center = view.center
  }
    
    @objc func rangeSliderValueChanged(_ rangeSlider: RangeSlider) {
      let values = "(\(rangeSlider.lowerValue) \(rangeSlider.upperValue))"
    
        
      print("Range slider value changed: \(values)")
    }
}

