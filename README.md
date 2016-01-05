#piQ - For Image Lovers

piQ is an open framwork for iOS, written in Swift. It includes many extensions for ImageViews. Create stylish things like a triangle view or let your image rotate and so on. 

###Example:

<img src=https://cdn.pbrd.co/images/wIzHyAJ.png width=240 height=400 />


##Requirements
* iOS 8+
* Xcode 7


##Integration

###Cocoapods

```
use_frameworks!

target 'YOURPROJECT' do

pod 'piQ', :git => 'https://github.com/mboeddeker/piQ.git'

end
```

###Manually

Put the ```piQ.swift``` file in your Project. Thats it.

##Usage

If you are using Cocoapods, you have to import it with:

~~~ swift
import piQ
~~~


### Load image from URL

~~~ swift
//Withour Placeholder
yourImageView.piQ_imageFromURL("https://image.png")

//With Placeholder
let placeholderPic : UIImage = UIImage(named: "picture1")!
yourImageView.piQ_imageFromURL("https://image.png", placeholderImage: placeholderPic)

~~~

### Geometrics

<img src=https://cdn.pbrd.co/images/wJ0l4kZ.png width=240 height=400 />

~~~swift
yourImageView.piQ_triangle_UP()
yourImageView.piQ_triangle_DOWN()
~~~


### Image Filter

<img src=https://cdn.pbrd.co/images/wJ6gngg.png width=240 height=400 />

~~~swift

yourImageView.piQ_convertToGrayScale(.Noir)

~~~

For GrayScale you have some options:

* .Tonality
* .Noir
* .AnselAdams
* .Dark
* .Dots



And you can tint your imageView!

<img src=https://cdn.pbrd.co/images/wJbBorw.png width=240 height=400 />

~~~swift

yourImageView.piQ_tintImageColor(UIColor.blueColor())

~~~


### Animations

####Rotate

<img src=https://cdn.pbrd.co/images/wJgD2UB.png width=240 height=400 />
<img src=https://cdn.pbrd.co/images/wJiC4sG.png width=240 height=400 />

~~~swift

yourImageView.piQ_rotateImage()


yourImage.piQ_rotateImageWithAnimation(6)

//It takes 6 secons for one 360° rotation.

~~~

####Hide and Show

<img src=https://cdn.pbrd.co/images/zOTKRPz.gif width=240 height=400 />

That is really simple. Create an outlet of that HeightConstraint from your ImageView.

~~~swift

    @IBOutlet weak var imageViewHeightConstraint: NSLayoutConstraint!
    //Your ImageViewHeight 
    
    @IBAction func hideShowButton(sender: AnyObject) {

        PIQ.toggleImageViewVisibility(self, ImageConstraint: imageViewHeightConstraint)
        
    }


~~~

##Future
piQ is a real simple framework, but I will work on it. The next steps are more geometrics, like a hexagon or an octagon. The other next big things are imagefilters. I'm working on some nice filters like in Instagram. 

If you wanna help me, send me an eMail to <kontakt@buchzulang.com>

Thank you!










