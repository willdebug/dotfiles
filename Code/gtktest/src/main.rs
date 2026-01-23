use glib::Priority;
use gtk::prelude::*;
use gtk::{
    Application, ApplicationWindow, Label,
    gio::{ApplicationFlags, prelude::ApplicationExtManual},
};
use gtk4::gdk::Display;
use gtk4::{
    self as gtk, Align, Box, BoxLayout, CssProvider, Grid, STYLE_PROVIDER_PRIORITY_APPLICATION,
    STYLE_PROVIDER_PRIORITY_USER, StyleContext,
};

fn main() {
    let app = Application::builder()
        .application_id("com.william.gtktest")
        .build();
    app.connect_activate(|app| {
        let window = ApplicationWindow::builder()
            .application(app)
            .default_width(10000)
            .default_height(100)
            .title("Test.com")
            .build();
        let button = gtk4::Button::builder().label("Click me!").build();
        button.set_width_request(25);
        button.set_height_request(25);
        button.set_hexpand(false);
        button.set_vexpand(false);
        button.set_halign(Align::Center);
        button.set_valign(Align::Center);
        button.connect_clicked(|i| {
            std::process::Command::new("playerctl")
                .arg("play-pause")
                .spawn();
        });
        let laoutbox = Box::builder()
            .visible(true)
            .width_request(10)
            .height_request(10)
            .orientation(gtk4::Orientation::Horizontal)
            .build();
        laoutbox.append(&button);
        laoutbox.set_css_classes(&["button"]);
        let provider = CssProvider::new();
        provider.load_from_path("/home/william/Code/gtktest/src/gtk.css");
        window
            .style_context()
            .add_provider(&provider, STYLE_PROVIDER_PRIORITY_APPLICATION as u32);

        window.set_child(Some(&laoutbox));
        window.show();
    });

    app.run();
}
