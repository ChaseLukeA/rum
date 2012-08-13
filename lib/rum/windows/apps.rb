# encoding: utf-8
Emacs = App.new('', nil, 'Emacs')
Emacs.binary = 'emacs'
require 'rum/barrel/emacs'

Firefox = App.new('mozilla firefox/firefox', /firefox/, 'MozillaWindowClass')
def Firefox.activate_and_focus_address_bar
  Keyboard.type '(ctrl l)' if activate
end

Photoshop = App.new('Adobe/Adobe Photoshop CS5.1 (64 Bit)/Photoshop', nil, 'Photoshop', :x64)
class << Photoshop
  def next_blend_mode
    if Rum.layout['ö'] # german layout
      type '(shift 0)'
    else
      type '(shift +)'
    end
  end

  def previous_blend_mode
    type '(shift -)'
  end
end

