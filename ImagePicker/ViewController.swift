
import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.backgroundColor = UIColor.lightGray
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        imageView.image = selectedImage
        
        dismiss(animated: true, completion: nil)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let controller = UIImagePickerController()
        controller.delegate = self
        controller.sourceType = .photoLibrary
        
        present(controller, animated: true, completion: nil)
    }
}
   



