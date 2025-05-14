//
//  WebView 2.swift
//  H4X0R News
//
//  Created by 진아현 on 5/15/25.
//


struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WebView.UIViewType {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
