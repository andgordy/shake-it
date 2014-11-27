@IBAction func tapButtonTUI (sender: UIButton) {
  shakeIt(30)
  }

func shakeIt (point: Int) {
  let x = CGFloat(point)
  UIView.animateWithDuration(0.1, animations: {
    self.viewToShake.transform = CGAffineTransformMakeTranslation(x, 0)
    }, completion: {
      (value: Bool) in
      if x > 0 {
        let newPoint : Int = -(Int(x) - 5)
        self.shakeIt(newPoint)
      } else if x < 0 {
        let newPoint : Int = -(Int(x)) - 5
        self.shakeIt(newPoint)
        }
    })
  }
