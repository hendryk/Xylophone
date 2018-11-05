import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        let xylophoneSound = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        do {
            player = try AVAudioPlayer(contentsOf: xylophoneSound)
            guard let player = player else {return}
            player.prepareToPlay()
            player.play()
            
        } catch let error as Error {
            print(error)
        }
    }

}

