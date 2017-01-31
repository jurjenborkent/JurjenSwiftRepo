
import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    // deze iboulet zorgt ervoor dat de gekozen afbeelding op het scherm wordt weergeven. 
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.backgroundColor = UIColor.lightGray
    }

    override var prefersStatusBarHidden: Bool {
        return true
        // functie die ervoor zorgt dat de bovenste balk (met baterij status en netwerk/provider) niet zichtbaar is.
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        imageView.image = selectedImage
        
        dismiss(animated: true, completion: nil)
        
        // hier wordt de gekozen image op de imageView geplaatst.
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let controller = UIImagePickerController()
        controller.delegate = self
        controller.sourceType = .photoLibrary
        
        present(controller, animated: true, completion: nil)
       
        // functie waarmee er een foto gekozen kan worden uit de foto library.
    }
}
   



