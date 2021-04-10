# Caps LockをEnterに
xmodmap -e 'clear lock'
xmodmap -e 'keycode 66 = Return NoSymbol Return' # もとは Eisu_toggle Caps_Lock Eisu_toggle Caps_Lock

# 変換をBackSpceに
xmodmap -e 'keycode 100 = BackSpace BackSpace BackSpace BackSpace' # もとは  Henkan_Mode NoSymbol Henkan_Mode

# 「カタカナひらがなローマ字」を半角/全角漢字」に
xmodmap -e 'keycode 101 = Zenkaku_Hankaku Kanji grave asciitilde' # もとは Hiragana_Katakana Romaji Hiragana_Katakana Romaji

# USキー配列
xmodmap -e 'keycode 11 = 2 at 2 at'
xmodmap -e 'keycode 15 = 6 asciicircum 6 ampersand'
xmodmap -e 'keycode 16 = 7 ampersand 7 apostrophe'
xmodmap -e 'keycode 17 = 8 asterisk 8 parenleft'
xmodmap -e 'keycode 18 = 9 parenleft 9 parenright'
xmodmap -e 'keycode 19 = 0 parenright 0 asciitilde'
xmodmap -e 'keycode 20 = minus underscore minus equal'
xmodmap -e 'keycode 21 = equal plus asciicircum asciitilde'
xmodmap -e 'keycode 34 = bracketleft braceleft at grave'
xmodmap -e 'keycode 35 = bracketright braceright bracketleft braceleft'
xmodmap -e 'keycode 47 = semicolon colon semicolon plus'
xmodmap -e 'keycode 48 = apostrophe quotedbl colon asterisk'
xmodmap -e 'keycode 51 = backslash bar bracketright braceright'
xmodmap -e 'keycode 59 = comma less comma less'
xmodmap -e 'keycode 60 = period greater period greater'
xmodmap -e 'keycode 61 = slash question slash question'
xmodmap -e 'keycode 97 = backslash grave backslash underscore'
xmodmap -e 'keycode 132 = asciicircum asciitilde backslash bar'

