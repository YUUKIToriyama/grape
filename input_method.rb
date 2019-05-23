#!/usr/bin/ruby

require 'gtk3'

window = Gtk::Window.new
window.set_title('input_method')
window.set_default_size(500,200)

# b1-b15
b1 = Gtk::Button.new
b1.set_label("あ")
b1.set_size_request(20,20)
b2 = Gtk::Button.new
b2.set_label("い")
b2.set_size_request(20,20)
b3 = Gtk::Button.new
b3.set_label("う")
b3.set_size_request(20,20)
b4 = Gtk::Button.new
b4.set_label("え")
b4.set_size_request(20,20)
b5 = Gtk::Button.new
b5.set_label("お")
b5.set_size_request(20,20)
b6 = Gtk::Button.new
b6.set_label("か")
b6.set_size_request(20,20)
b7 = Gtk::Button.new
b7.set_label("き")
b7.set_size_request(20,20)
b8 = Gtk::Button.new
b8.set_label("く")
b8.set_size_request(20,20)
b9 = Gtk::Button.new
b9.set_label("け")
b9.set_size_request(20,20)
b10 = Gtk::Button.new
b10.set_label("こ")
b10.set_size_request(20,20)
b11 = Gtk::Button.new
b11.set_label("さ")
b11.set_size_request(20,20)
b12 = Gtk::Button.new
b12.set_label("し")
b12.set_size_request(20,20)
b13 = Gtk::Button.new
b13.set_label("す")
b13.set_size_request(20,20)
b14 = Gtk::Button.new
b14.set_label("せ")
b14.set_size_request(20,20)
b15 = Gtk::Button.new
b15.set_label("そ")
b15.set_size_request(20,20)

fixed = Gtk::Fixed.new
fixed.put(b1, 10, 10)
fixed.put(b2, 60, 10)
fixed.put(b3, 110, 10)
fixed.put(b4, 160, 10)
fixed.put(b5, 210, 10)

fixed.put(b6, 10, 50)
fixed.put(b7, 60, 50)
fixed.put(b8, 110, 50)
fixed.put(b9, 160, 50)
fixed.put(b10, 210, 50)

fixed.put(b11, 10, 90)
fixed.put(b12, 60, 90)
fixed.put(b13, 110, 90)
fixed.put(b14, 160, 90)
fixed.put(b15, 210, 90)


b1.signal_connect("clicked") { print "あ" }
b2.signal_connect("clicked") { print "い" }
b3.signal_connect("clicked") { print "う" }
b4.signal_connect("clicked") { print "え" }
b5.signal_connect("clicked") { print "お" }
b6.signal_connect("clicked") { print "か" }
b7.signal_connect("clicked") { print "き" }
b8.signal_connect("clicked") { print "く" }
b9.signal_connect("clicked") { print "け" }
b10.signal_connect("clicked") { print "こ" }
b11.signal_connect("clicked") { print "さ" }
b12.signal_connect("clicked") { print "し" }
b13.signal_connect("clicked") { print "す" }
b14.signal_connect("clicked") { print "せ" }
b15.signal_connect("clicked") { print "そ" }

window.add(fixed)

window.show_all
window.signal_connect("destroy") {
	Gtk.main_quit
}
Gtk.main
