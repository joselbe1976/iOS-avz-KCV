import UIKit

class ImageViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func loadImageButtonClick(_ sender: Any) {
        assert(Thread.current == Thread.main)
        print(Thread.current.description)
        
        DispatchQueue.global().async {
            self.loadImage()
        }
    }
    
    func loadImage() {
        assert(Thread.current != Thread.main)
        print(Thread.current.description)
        
        let imageUrl = "http://www.castellonaldia.es/wp-content/uploads/2014/01/La-Gioconda-carmen-de-mairena.jpg"
        
        assert(imageUrl.lengthOfBytes(using: String.Encoding.utf8) > 0)
        
        if let url = URL(string: imageUrl),
           let data = NSData(contentsOf: url) {
           let image = UIImage(data: data as Data)
            
            DispatchQueue.main.async {
                self.imageView.image = image
            }
        }
        
    }
    
}
