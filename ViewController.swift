@IBAction func tapTheButton (sender: UIButton) {
  shakeIt(30, duration:0.1) // first value must be a multiple of 5
}
  
@IBOutlet weak var viewToShake: UIView!

func shakeIt (distance: Int, duration: Double) {
  let x = CGFloat(distance)
  UIView.animateWithDuration(duration, animations: {
    self.viewToShake.transform = CGAffineTransformMakeTranslation(x, 0)
    }, completion: {
      (value: Bool) in
      if x > 0 {
        let newPoint : Int = -(Int(x) - 5)
        let newDuration : Double = duration + 0.01
        self.shakeIt(newPoint, duration: newDuration)
      } else if x < 0 {
        let newPoint : Int = -(Int(x)) - 5
        let newDuration : Double = duration + 0.01
        self.shakeIt(newPoint, duration: newDuration)
    }
  })
}

