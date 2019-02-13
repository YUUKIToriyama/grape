#!/usr/bin/ruby

require 'gtk3'

window = Gtk::Window.new
window.set_title('input_method')
window.set_default_size(1000,400)

fixed = Gtk::Fixed.new


# output String & Array
str = ""
arr = Array.new

# textbox
textbox = Gtk::TextView.new
textbox.set_size_request(500, 40)
textbox.buffer.text = str
fixed.put(textbox, 10, 400)


# choseong consonants
cc1 = Gtk::Button.new(:label => "1100".hex.chr("UTF-8"))
cc1.signal_connect("clicked") { print "1100".hex.chr("UTF-8"); str = str + "1100".hex.chr("UTF-8"); arr.push("\\U1100"); textbox.buffer.text = str }
cc2 = Gtk::Button.new(:label => "1101".hex.chr("UTF-8"))
cc2.signal_connect("clicked") { print "1101".hex.chr("UTF-8"); str = str + "1101".hex.chr("UTF-8"); arr.push("\\U1101"); textbox.buffer.text     = str  }
cc3 = Gtk::Button.new(:label => "1102".hex.chr("UTF-8"))
cc3.signal_connect("clicked") { print "1102".hex.chr("UTF-8"); str = str + "1102".hex.chr("UTF-8"); arr.push("\\U1102"); textbox.buffer.text     = str  }
cc4 = Gtk::Button.new(:label => "1103".hex.chr("UTF-8"))
cc4.signal_connect("clicked") { print "1103".hex.chr("UTF-8"); str = str + "1103".hex.chr("UTF-8"); arr.push("\\U1103"); textbox.buffer.text     = str  }
cc5 = Gtk::Button.new(:label => "1104".hex.chr("UTF-8"))
cc5.signal_connect("clicked") { print "1104".hex.chr("UTF-8"); str = str + "1104".hex.chr("UTF-8"); arr.push("\\U1104"); textbox.buffer.text     = str  }
cc6 = Gtk::Button.new(:label => "1105".hex.chr("UTF-8"))
cc6.signal_connect("clicked") { print "1105".hex.chr("UTF-8"); str = str + "1105".hex.chr("UTF-8"); arr.push("\\U1105"); textbox.buffer.text     = str  }
cc7 = Gtk::Button.new(:label => "1106".hex.chr("UTF-8"))
cc7.signal_connect("clicked") { print "1106".hex.chr("UTF-8"); str = str + "1106".hex.chr("UTF-8"); arr.push("\\U1106"); textbox.buffer.text     = str  }
cc8 = Gtk::Button.new(:label => "1107".hex.chr("UTF-8"))
cc8.signal_connect("clicked") { print "1107".hex.chr("UTF-8"); str = str + "1107".hex.chr("UTF-8"); arr.push("\\U1107"); textbox.buffer.text     = str  }
cc9 = Gtk::Button.new(:label => "1108".hex.chr("UTF-8"))
cc9.signal_connect("clicked") { print "1108".hex.chr("UTF-8"); str = str + "1108".hex.chr("UTF-8"); arr.push("\\U1108"); textbox.buffer.text     = str  }
cc10 = Gtk::Button.new(:label => "1109".hex.chr("UTF-8"))
cc10.signal_connect("clicked") { print "1109".hex.chr("UTF-8"); str = str + "1109".hex.chr("UTF-8"); arr.push("\\U1109"); textbox.buffer.text     = str  }
cc11 = Gtk::Button.new(:label => "110a".hex.chr("UTF-8"))
cc11.signal_connect("clicked") { print "110a".hex.chr("UTF-8"); str = str + "110a".hex.chr("UTF-8"); arr.push("\\U110a"); textbox.buffer.text     = str  }
cc12 = Gtk::Button.new(:label => "110b".hex.chr("UTF-8"))
cc12.signal_connect("clicked") { print "110b".hex.chr("UTF-8"); str = str + "110b".hex.chr("UTF-8"); arr.push("\\U110b"); textbox.buffer.text     = str  }
cc13 = Gtk::Button.new(:label => "110c".hex.chr("UTF-8"))
cc13.signal_connect("clicked") { print "110c".hex.chr("UTF-8"); str = str + "110c".hex.chr("UTF-8"); arr.push("\\U110c"); textbox.buffer.text     = str  }
cc14 = Gtk::Button.new(:label => "110d".hex.chr("UTF-8"))
cc14.signal_connect("clicked") { print "110d".hex.chr("UTF-8"); str = str + "110d".hex.chr("UTF-8"); arr.push("\\U110d"); textbox.buffer.text     = str  }
cc15 = Gtk::Button.new(:label => "110e".hex.chr("UTF-8"))
cc15.signal_connect("clicked") { print "110e".hex.chr("UTF-8"); str = str + "110e".hex.chr("UTF-8"); arr.push("\\U110e"); textbox.buffer.text     = str  }
cc16 = Gtk::Button.new(:label => "110f".hex.chr("UTF-8"))
cc16.signal_connect("clicked") { print "110f".hex.chr("UTF-8"); str = str + "110f".hex.chr("UTF-8"); arr.push("\\U110f"); textbox.buffer.text     = str  }
cc17 = Gtk::Button.new(:label => "1110".hex.chr("UTF-8"))
cc17.signal_connect("clicked") { print "1110".hex.chr("UTF-8"); str = str + "1110".hex.chr("UTF-8"); arr.push("\\U1110"); textbox.buffer.text     = str  }
cc18 = Gtk::Button.new(:label => "1111".hex.chr("UTF-8"))
cc18.signal_connect("clicked") { print "1111".hex.chr("UTF-8"); str = str + "1111".hex.chr("UTF-8"); arr.push("\\U1111"); textbox.buffer.text     = str  }
cc19 = Gtk::Button.new(:label => "1112".hex.chr("UTF-8"))
cc19.signal_connect("clicked") { print "1112".hex.chr("UTF-8"); str = str + "1112".hex.chr("UTF-8"); arr.push("\\U1112"); textbox.buffer.text     = str  }

# jungseong vowels
jv1 = Gtk::Button.new(:label => "1161".hex.chr("UTF-8"))
jv1.signal_connect("clicked") { print "1161".hex.chr("UTF-8"); str = str + "1161".hex.chr("UTF-8"); arr.push("\\U1161"); textbox.buffer.text     = str  }
jv2 = Gtk::Button.new(:label => "1162".hex.chr("UTF-8"))
jv2.signal_connect("clicked") { print "1162".hex.chr("UTF-8"); str = str + "1162".hex.chr("UTF-8"); arr.push("\\U1162"); textbox.buffer.text     = str  }
jv3 = Gtk::Button.new(:label => "1163".hex.chr("UTF-8"))
jv3.signal_connect("clicked") { print "1163".hex.chr("UTF-8"); str = str + "1163".hex.chr("UTF-8"); arr.push("\\U1163"); textbox.buffer.text     = str  }
jv4 = Gtk::Button.new(:label => "1164".hex.chr("UTF-8"))
jv4.signal_connect("clicked") { print "1164".hex.chr("UTF-8"); str = str + "1164".hex.chr("UTF-8"); arr.push("\\U1164"); textbox.buffer.text     = str  }
jv5 = Gtk::Button.new(:label => "1165".hex.chr("UTF-8"))
jv5.signal_connect("clicked") { print "1165".hex.chr("UTF-8"); str = str + "1165".hex.chr("UTF-8"); arr.push("\\U1165"); textbox.buffer.text     = str  }
jv6 = Gtk::Button.new(:label => "1166".hex.chr("UTF-8"))
jv6.signal_connect("clicked") { print "1166".hex.chr("UTF-8"); str = str + "1166".hex.chr("UTF-8"); arr.push("\\U1166"); textbox.buffer.text     = str  }
jv7 = Gtk::Button.new(:label => "1167".hex.chr("UTF-8"))
jv7.signal_connect("clicked") { print "1167".hex.chr("UTF-8"); str = str + "1167".hex.chr("UTF-8"); arr.push("\\U1167"); textbox.buffer.text     = str  }
jv8 = Gtk::Button.new(:label => "1168".hex.chr("UTF-8"))
jv8.signal_connect("clicked") { print "1168".hex.chr("UTF-8"); str = str + "1168".hex.chr("UTF-8"); arr.push("\\U1168"); textbox.buffer.text     = str  }
jv9 = Gtk::Button.new(:label => "1169".hex.chr("UTF-8"))
jv9.signal_connect("clicked") { print "1169".hex.chr("UTF-8"); str = str + "1169".hex.chr("UTF-8"); arr.push("\\U1169"); textbox.buffer.text     = str  }
jv10 = Gtk::Button.new(:label => "116a".hex.chr("UTF-8"))
jv10.signal_connect("clicked") { print "116a".hex.chr("UTF-8"); str = str + "116a".hex.chr("UTF-8"); arr.push("\\U116a"); textbox.buffer.text     = str  }
jv11 = Gtk::Button.new(:label => "116b".hex.chr("UTF-8"))
jv11.signal_connect("clicked") { print "116b".hex.chr("UTF-8"); str = str + "116b".hex.chr("UTF-8"); arr.push("\\U116b"); textbox.buffer.text     = str  }
jv12 = Gtk::Button.new(:label => "116c".hex.chr("UTF-8"))
jv12.signal_connect("clicked") { print "116c".hex.chr("UTF-8"); str = str + "116c".hex.chr("UTF-8"); arr.push("\\U116c"); textbox.buffer.text     = str  }
jv13 = Gtk::Button.new(:label => "116d".hex.chr("UTF-8"))
jv13.signal_connect("clicked") { print "116d".hex.chr("UTF-8"); str = str + "116d".hex.chr("UTF-8"); arr.push("\\U116d"); textbox.buffer.text     = str  }
jv14 = Gtk::Button.new(:label => "116e".hex.chr("UTF-8"))
jv14.signal_connect("clicked") { print "116e".hex.chr("UTF-8"); str = str + "116e".hex.chr("UTF-8"); arr.push("\\U116e"); textbox.buffer.text     = str  }
jv15 = Gtk::Button.new(:label => "116f".hex.chr("UTF-8"))
jv15.signal_connect("clicked") { print "116f".hex.chr("UTF-8"); str = str + "116f".hex.chr("UTF-8"); arr.push("\\U116f"); textbox.buffer.text     = str  }
jv16 = Gtk::Button.new(:label => "1170".hex.chr("UTF-8"))
jv16.signal_connect("clicked") { print "1170".hex.chr("UTF-8"); str = str + "1170".hex.chr("UTF-8"); arr.push("\\U1170"); textbox.buffer.text     = str  }
jv17 = Gtk::Button.new(:label => "1171".hex.chr("UTF-8"))
jv17.signal_connect("clicked") { print "1171".hex.chr("UTF-8"); str = str + "1171".hex.chr("UTF-8"); arr.push("\\U1171"); textbox.buffer.text     = str  }
jv18 = Gtk::Button.new(:label => "1172".hex.chr("UTF-8"))
jv18.signal_connect("clicked") { print "1172".hex.chr("UTF-8"); str = str + "1172".hex.chr("UTF-8"); arr.push("\\U1172"); textbox.buffer.text     = str  }
jv19 = Gtk::Button.new(:label => "1173".hex.chr("UTF-8"))
jv19.signal_connect("clicked") { print "1173".hex.chr("UTF-8"); str = str + "1173".hex.chr("UTF-8"); arr.push("\\U1173"); textbox.buffer.text     = str  }
jv20 = Gtk::Button.new(:label => "1174".hex.chr("UTF-8"))
jv20.signal_connect("clicked") { print "1174".hex.chr("UTF-8"); str = str + "1174".hex.chr("UTF-8"); arr.push("\\U1174"); textbox.buffer.text     = str  }
jv21 = Gtk::Button.new(:label => "1175".hex.chr("UTF-8"))
jv21.signal_connect("clicked") { print "1175".hex.chr("UTF-8"); str = str + "1175".hex.chr("UTF-8"); arr.push("\\U1175"); textbox.buffer.text     = str  }

# jongseong consonants
jc1 = Gtk::Button.new(:label => "11a8".hex.chr("UTF-8"))
jc1.signal_connect("clicked") { print "11a8".hex.chr("UTF-8"); str = str + "11a8".hex.chr("UTF-8"); arr.push("\\U11a8"); textbox.buffer.text     = str  }
jc2 = Gtk::Button.new(:label => "11a9".hex.chr("UTF-8"))
jc2.signal_connect("clicked") { print "11a9".hex.chr("UTF-8"); str = str + "11a9".hex.chr("UTF-8"); arr.push("\\U11a9"); textbox.buffer.text     = str  }
jc3 = Gtk::Button.new(:label => "11aa".hex.chr("UTF-8"))
jc3.signal_connect("clicked") { print "11aa".hex.chr("UTF-8"); str = str + "11aa".hex.chr("UTF-8"); arr.push("\\U11aa"); textbox.buffer.text     = str  }
jc4 = Gtk::Button.new(:label => "11ab".hex.chr("UTF-8"))
jc4.signal_connect("clicked") { print "11ab".hex.chr("UTF-8"); str = str + "11ab".hex.chr("UTF-8"); arr.push("\\U11ab"); textbox.buffer.text     = str  }
jc5 = Gtk::Button.new(:label => "11ac".hex.chr("UTF-8"))
jc5.signal_connect("clicked") { print "11ac".hex.chr("UTF-8"); str = str + "11ac".hex.chr("UTF-8"); arr.push("\\U11ac"); textbox.buffer.text     = str  }
jc6 = Gtk::Button.new(:label => "11ad".hex.chr("UTF-8"))
jc6.signal_connect("clicked") { print "11ad".hex.chr("UTF-8"); str = str + "11ad".hex.chr("UTF-8"); arr.push("\\U11ad"); textbox.buffer.text     = str  }
jc7 = Gtk::Button.new(:label => "11ae".hex.chr("UTF-8"))
jc7.signal_connect("clicked") { print "11ae".hex.chr("UTF-8"); str = str + "11ae".hex.chr("UTF-8"); arr.push("\\U11ae"); textbox.buffer.text     = str  }
jc8 = Gtk::Button.new(:label => "11af".hex.chr("UTF-8"))
jc8.signal_connect("clicked") { print "11af".hex.chr("UTF-8"); str = str + "11af".hex.chr("UTF-8"); arr.push("\\U11af"); textbox.buffer.text     = str  }
jc9 = Gtk::Button.new(:label => "11b0".hex.chr("UTF-8"))
jc9.signal_connect("clicked") { print "11b0".hex.chr("UTF-8"); str = str + "11b0".hex.chr("UTF-8"); arr.push("\\U11b0"); textbox.buffer.text     = str  }
jc10 = Gtk::Button.new(:label => "11b1".hex.chr("UTF-8"))
jc10.signal_connect("clicked") { print "11b1".hex.chr("UTF-8"); str = str + "11b1".hex.chr("UTF-8"); arr.push("\\U11b1"); textbox.buffer.text     = str  }
jc11 = Gtk::Button.new(:label => "11b2".hex.chr("UTF-8"))
jc11.signal_connect("clicked") { print "11b2".hex.chr("UTF-8"); str = str + "11b2".hex.chr("UTF-8"); arr.push("\\U11b2"); textbox.buffer.text     = str  }
jc12 = Gtk::Button.new(:label => "11b3".hex.chr("UTF-8"))
jc12.signal_connect("clicked") { print "11b3".hex.chr("UTF-8"); str = str + "11b3".hex.chr("UTF-8"); arr.push("\\U11b3"); textbox.buffer.text     = str  }
jc13 = Gtk::Button.new(:label => "11b4".hex.chr("UTF-8"))
jc13.signal_connect("clicked") { print "11b4".hex.chr("UTF-8"); str = str + "11b4".hex.chr("UTF-8"); arr.push("\\U11b4"); textbox.buffer.text     = str  }
jc14 = Gtk::Button.new(:label => "11b5".hex.chr("UTF-8"))
jc14.signal_connect("clicked") { print "11b5".hex.chr("UTF-8"); str = str + "11b5".hex.chr("UTF-8"); arr.push("\\U11b5"); textbox.buffer.text     = str  }
jc15 = Gtk::Button.new(:label => "11b6".hex.chr("UTF-8"))
jc15.signal_connect("clicked") { print "11b6".hex.chr("UTF-8"); str = str + "11b6".hex.chr("UTF-8"); arr.push("\\U11b6"); textbox.buffer.text     = str  }
jc16 = Gtk::Button.new(:label => "11b7".hex.chr("UTF-8"))
jc16.signal_connect("clicked") { print "11b7".hex.chr("UTF-8"); str = str + "11b7".hex.chr("UTF-8"); arr.push("\\U11b7"); textbox.buffer.text     = str  }
jc17 = Gtk::Button.new(:label => "11b8".hex.chr("UTF-8"))
jc17.signal_connect("clicked") { print "11b8".hex.chr("UTF-8"); str = str + "11b8".hex.chr("UTF-8"); arr.push("\\U11b8"); textbox.buffer.text     = str  }
jc18 = Gtk::Button.new(:label => "11b9".hex.chr("UTF-8"))
jc18.signal_connect("clicked") { print "11b9".hex.chr("UTF-8"); str = str + "11b9".hex.chr("UTF-8"); arr.push("\\U11b9"); textbox.buffer.text     = str  }
jc19 = Gtk::Button.new(:label => "11ba".hex.chr("UTF-8"))
jc19.signal_connect("clicked") { print "11ba".hex.chr("UTF-8"); str = str + "11ba".hex.chr("UTF-8"); arr.push("\\U11ba"); textbox.buffer.text     = str  }
jc20 = Gtk::Button.new(:label => "11bb".hex.chr("UTF-8"))
jc20.signal_connect("clicked") { print "11bb".hex.chr("UTF-8"); str = str + "11bb".hex.chr("UTF-8"); arr.push("\\U11bb"); textbox.buffer.text     = str  }
jc21 = Gtk::Button.new(:label => "11bc".hex.chr("UTF-8"))
jc21.signal_connect("clicked") { print "11bc".hex.chr("UTF-8"); str = str + "11bc".hex.chr("UTF-8"); arr.push("\\U11bc"); textbox.buffer.text     = str  }
jc22 = Gtk::Button.new(:label => "11bd".hex.chr("UTF-8"))
jc22.signal_connect("clicked") { print "11bd".hex.chr("UTF-8"); str = str + "11bd".hex.chr("UTF-8"); arr.push("\\U11bd"); textbox.buffer.text     = str  }
jc23 = Gtk::Button.new(:label => "11be".hex.chr("UTF-8"))
jc23.signal_connect("clicked") { print "11be".hex.chr("UTF-8"); str = str + "11be".hex.chr("UTF-8"); arr.push("\\U11be"); textbox.buffer.text     = str  }
jc24 = Gtk::Button.new(:label => "11bf".hex.chr("UTF-8"))
jc24.signal_connect("clicked") { print "11bf".hex.chr("UTF-8"); str = str + "11bf".hex.chr("UTF-8"); arr.push("\\U11bf"); textbox.buffer.text     = str  }
jc25 = Gtk::Button.new(:label => "11c0".hex.chr("UTF-8"))
jc25.signal_connect("clicked") { print "11c0".hex.chr("UTF-8"); str = str + "11c0".hex.chr("UTF-8"); arr.push("\\U11c0"); textbox.buffer.text     = str  }
jc26 = Gtk::Button.new(:label => "11c1".hex.chr("UTF-8"))
jc26.signal_connect("clicked") { print "11c1".hex.chr("UTF-8"); str = str + "11c1".hex.chr("UTF-8"); arr.push("\\U11c1"); textbox.buffer.text     = str  }
jc27 = Gtk::Button.new(:label => "11c2".hex.chr("UTF-8"))
jc27.signal_connect("clicked") { print "11c2".hex.chr("UTF-8"); str = str + "11c2".hex.chr("UTF-8"); arr.push("\\U11c2"); textbox.buffer.text     = str  }



# choseong consonants
fixed.put(cc1, 10, 10)
fixed.put(cc2, 60, 10)
fixed.put(cc3, 110, 10)
fixed.put(cc4, 160, 10)
fixed.put(cc5, 210, 10)
fixed.put(cc6, 10, 50)
fixed.put(cc7, 60, 50)
fixed.put(cc8, 110, 50)
fixed.put(cc9, 160, 50)
fixed.put(cc10, 210, 50)
fixed.put(cc11, 10, 90)
fixed.put(cc12, 60, 90)
fixed.put(cc13, 110, 90)
fixed.put(cc14, 160, 90)
fixed.put(cc15, 210, 90)
fixed.put(cc16, 10, 130)
fixed.put(cc17, 60, 130)
fixed.put(cc18, 110, 130)
fixed.put(cc19, 160, 130)

# jungseong vowels
fixed.put(jv1, 300, 10)
fixed.put(jv2, 350, 10)
fixed.put(jv3, 400, 10)
fixed.put(jv4, 450, 10)
fixed.put(jv5, 500, 10)
fixed.put(jv6, 550, 10)
fixed.put(jv7, 300, 50)
fixed.put(jv8, 350, 50)
fixed.put(jv9, 400, 50)
fixed.put(jv10, 450, 50)
fixed.put(jv11, 500, 50)
fixed.put(jv12, 550, 50)
fixed.put(jv13, 300, 90)
fixed.put(jv14, 350, 90)
fixed.put(jv15, 400, 90)
fixed.put(jv16, 450, 90)
fixed.put(jv17, 500, 90)
fixed.put(jv18, 550, 90)
fixed.put(jv19, 300, 130)
fixed.put(jv20, 350, 130)
fixed.put(jv21, 400, 130)

# jongseong consonants
fixed.put(jc1, 650, 10)
fixed.put(jc2, 700, 10)
fixed.put(jc3, 750, 10)
fixed.put(jc4, 800, 10)
fixed.put(jc5, 850, 10)
fixed.put(jc6, 900, 10)
fixed.put(jc7, 950, 10)
fixed.put(jc8, 650, 50)
fixed.put(jc9, 700, 50)
fixed.put(jc10, 750, 50)
fixed.put(jc11, 800, 50)
fixed.put(jc12, 850, 50)
fixed.put(jc13, 900, 50)
fixed.put(jc14, 950, 50)
fixed.put(jc15, 650, 90)
fixed.put(jc16, 700, 90)
fixed.put(jc17, 750, 90)
fixed.put(jc18, 800, 90)
fixed.put(jc19, 850, 90)
fixed.put(jc20, 900, 90)
fixed.put(jc21, 950, 90)
fixed.put(jc22, 650, 130)
fixed.put(jc23, 700, 130)
fixed.put(jc24, 750, 130)
fixed.put(jc25, 800, 130)
fixed.put(jc26, 850, 130)
fixed.put(jc27, 900, 130)


window.add(fixed)

window.show_all
window.signal_connect("destroy") {
	Gtk.main_quit
}
Gtk.main
