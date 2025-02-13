import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set up the background color
        self.view.backgroundColor = .white

        // Create the button
        let button = UIButton(type: .system)
        button.setTitle("Click Me", for: .normal)
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
        button.center = self.view.center

        // Add the action to the button
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        // Add the button to the view
        self.view.addSubview(button)
    }

    // Function to display the alert when the button is tapped
    @objc func buttonTapped() {
        let alert = UIAlertController(title: "Hello", message: "Hello World", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        // Show the alert
        present(alert, animated: true, completion: nil)
    }
}
