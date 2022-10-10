import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
public struct ReusableButton: View {
    
    let action: () -> Void
    
    public init(action: @escaping () -> Void) {
        self.action = action
    }
    
    public var body: some View {
        Button("Click Me", action: action)
            .buttonStyle(CustomButtonStyle())
    }
}

@available(iOS 13.0, macOS 10.15, *)
public struct CustomButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        Group {
            configuration.label
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
                .cornerRadius(15)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        
    }
}
