#if os(Linux)
import Glibc
#endif
import Inquiline
import Curassow
import Foundation


serve { _ in
  return Response(.Ok, headers:[], contentType: "text/plain", content: "Hello Worldhhh \(NSProcessInfo.processInfo().environment)")
}
