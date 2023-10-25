//
//  ViewController.swift
//  systemViewControllers
//
//  Created by Paul Stewart on 10/24/23.
//

import UIKit
import SafariServices
import MessageUI

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shareButtonTapped(_ sender: UIButton) {
        guard let image = imageView.image else { return }
        
        let activityController = UIActivityViewController(activityItems: [image, "This is a share"], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = sender
        present(activityController, animated: true)
    }
    
    @IBAction func safariButtonTapped(_ sender: Any) {
        if let url = URL(string: "https://www.apple.com") {
            let safariViewController = SFSafariViewController(url: url)
            present(safariViewController, animated: true)
        }
    }
    
    @IBAction func cameraButtonTapped(_ sender: UIView) {
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        
        let alertController = UIAlertController(title: "Help", message: "I need somebody", preferredStyle: .alert)
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            
            let cameraAction = UIAlertAction(title: "Camera", style: .default) { action in
                imagePickerController.sourceType = .camera
                self.present(imagePickerController, animated: true)
            }
            alertController.addAction(cameraAction)
        }
       
        
        let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default) { action in
            imagePickerController.sourceType = .photoLibrary
            self.present(imagePickerController, animated: true)
        }
        alertController.addAction(photoLibraryAction)
        
        let cancelAction = UIAlertAction(title: "help?", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        alertController.popoverPresentationController?.sourceView = sender
        present(alertController, animated: true)
    }
    
    @IBAction func emailbuttonTapped(_ sender: Any) {
        guard MFMailComposeViewController.canSendMail() else {
            print("cannot send email")
            return
        }
        
        let mailComposer = MFMailComposeViewController()
        mailComposer.mailComposeDelegate = self
        mailComposer.setToRecipients(["paul-stewart-professional@gmail.com"])
        mailComposer.setSubject("Look at this! ( . v . )")
        mailComposer.setMessageBody("Yo, this be the app we just made.", isHTML: false)
        if let image = imageView.image, let jpegData = image.jpegData(compressionQuality: 0.9) {
            mailComposer.addAttachmentData(jpegData, mimeType: "Image/jpeg", fileName: "photo.jpg")
        }
        present(mailComposer, animated: true)
    }
    
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else { return }
        imageView.image = selectedImage
        dismiss(animated: true)
    }
}
extension ViewController: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        dismiss(animated: true)
    }
}
