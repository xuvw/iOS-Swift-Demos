/*
    Copyright (C) 2014 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    
                A view controller that demonstrates how to use UIImageView.
            
*/

import UIKit

class ImageViewController: UIViewController {
    // MARK: View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // The root view of the view controller set in Interface Builder is a UIImageView.
        let imageView = view as UIImageView

        imageView.animationImages = [
            UIImage(named: "image_animal_1"),
            UIImage(named: "image_animal_2"),
            UIImage(named: "image_animal_3"),
            UIImage(named: "image_animal_4"),
            UIImage(named: "image_animal_5")
        ]

        // We want the image to be scaled to the correct aspect ratio within imageView's bounds.
        imageView.contentMode = .ScaleAspectFit

        // If the image does not have the same aspect ratio as imageView's bounds, then imageView's backgroundColor will be applied to the "empty" space.
        imageView.backgroundColor = UIColor.whiteColor()

        imageView.animationDuration = 5
        imageView.startAnimating()

        imageView.isAccessibilityElement = true
        imageView.accessibilityLabel = NSLocalizedString("Animated", comment: "")
    }
}
