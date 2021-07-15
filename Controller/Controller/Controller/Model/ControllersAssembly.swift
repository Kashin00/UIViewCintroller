
import Foundation
import UIKit

let mainStoryboard = "Main"

public struct StoryboardRepresentation {
    let bundle: Bundle?
    let storyboardName: String
    let storyboardId: String
}

public enum TypeOfViewController {
    case firts
    case second
    case device
}
extension TypeOfViewController {
    
    func storyboardRepresentation() -> StoryboardRepresentation {
        switch self {
        case .firts:
            return StoryboardRepresentation(bundle: nil,
                                            storyboardName: mainStoryboard,
                                            storyboardId: "FirstViewController")
        case .second:
            return StoryboardRepresentation(bundle: nil,
                                            storyboardName: mainStoryboard,
                                            storyboardId: "SecondViewController")
        case .device:
            return StoryboardRepresentation(bundle: nil,
                                            storyboardName: mainStoryboard,
                                            storyboardId: "DeviceInfoViewController")
        }
    }
}

class ControllersAssembly: NSObject {
    static func viewController(for typeOfVC: TypeOfViewController) -> UIViewController {
        let metadata = typeOfVC.storyboardRepresentation()
        let sb = UIStoryboard(name: metadata.storyboardName, bundle: metadata.bundle)
        let vc = sb.instantiateViewController(withIdentifier: metadata.storyboardId)
        return vc
        
    }
}
