import Foundation

public struct Example {
    public static func example(of: String, body: () -> Void) {
        print("--- Example of \(of) ---")
        body()
    }
}
