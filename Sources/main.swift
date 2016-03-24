#if os(Linux)
import Glibc
#endif
import Curassow
import Foundation
import Frank

func pageWithContent(content: String, title: String) -> String {
  return "<!doctype html><html lang=en><head><meta charset=utf-8><title>\(title)</title></head><body>\(content)</body></html>"
}

func formWithContent(content: String) -> String {
  return "<form action=\"/\" method=\"post\">\(content)</form>"
}

get { _ in
  return pageWithContent(formWithContent("Regex:<input type=\"text\" name=\"regexp\"/><input type=\"submit\" name=\"go\" value=\"HI\"/>"), title: "NSRegularExpression")
}

post { request in
  return "Request: \(request)"
}

serve(call)
