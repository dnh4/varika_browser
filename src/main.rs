extern crate web_view;

use web_view::WebView;

fn main() {
    web_view::builder()
        .title("Webview Example")
        .content(web_view::Content::Html("<html><body><h1>Hello, WebView!</h1></body></html>"))
        .size(800, 600)
        .resizable(true)
        .debug(true)
        .user_data(())
        .invoke_handler(|_webview, _arg| Ok(()))
        .run()
        .unwrap();
}
