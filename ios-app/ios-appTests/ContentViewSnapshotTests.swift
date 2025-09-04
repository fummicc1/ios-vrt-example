import XCTest
import SnapshotTesting
import SwiftUI
import UIKit

@testable import ios_app

final class ContentViewSnapshotTests: XCTestCase {
    
    override func invokeTest() {
        withSnapshotTesting(record: .missing) {
            super.invokeTest()
        }
    }
    
    override func setUp() {
        super.setUp()
        // Configure snapshot testing for consistent results
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testContentViewSnapshot_iPhoneSE_light() {
        let contentView = ContentView()
        let hostingController = UIHostingController(rootView: contentView)
        
        // Configure for light mode
        hostingController.overrideUserInterfaceStyle = .light
        
        assertSnapshot(
            of: hostingController,
            as: .image(on: .iPhoneSe)
        )
    }
    
    func testContentViewSnapshot_iPhoneSE_dark() {
        let contentView = ContentView()
        let hostingController = UIHostingController(rootView: contentView)
        
        // Configure for dark mode
        hostingController.overrideUserInterfaceStyle = .dark
        
        assertSnapshot(
            of: hostingController,
            as: .image(on: .iPhoneSe)
        )
    }
    
    func testContentViewSnapshot_iPhone16_light() {
        let contentView = ContentView()
        let hostingController = UIHostingController(rootView: contentView)
        
        // Configure for light mode
        hostingController.overrideUserInterfaceStyle = .light
        
        assertSnapshot(
            of: hostingController,
            as: .image(on: .iPhoneX)
        )
    }
    
    func testContentViewSnapshot_iPhone16_dark() {
        let contentView = ContentView()
        let hostingController = UIHostingController(rootView: contentView)
        
        // Configure for dark mode
        hostingController.overrideUserInterfaceStyle = .dark
        
        assertSnapshot(
            of: hostingController,
            as: .image(on: .iPhoneX)
        )
    }
    
    func testContentViewSnapshot_iPad_light() {
        let contentView = ContentView()
        let hostingController = UIHostingController(rootView: contentView)
        
        // Configure for light mode
        hostingController.overrideUserInterfaceStyle = .light
        
        assertSnapshot(
            of: hostingController,
            as: .image(on: .iPadMini(.portrait))
        )
    }
    
    func testContentViewSnapshot_iPad_dark() {
        let contentView = ContentView()
        let hostingController = UIHostingController(rootView: contentView)
        
        // Configure for dark mode
        hostingController.overrideUserInterfaceStyle = .dark
        
        assertSnapshot(
            of: hostingController,
            as: .image(on: .iPadMini(.portrait))
        )
    }
}
