" Vim color file
" Name:       demos.vim
"
" This should work in the GUI, rxvt-unicode (88 colour mode) and xterm (256
" colour mode). It won't work in 8/16 colour terminals.
"
" To use a black background, :let g:inkpot_black_background = 1

hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "demos_xterm"

" map a urxvt cube number to an xterm-256 cube number
fun! <SID>M(a)
    return strpart("0135", a:a, 1) + 0
endfun

" map a urxvt colour to an xterm-256 colour
fun! <SID>X(a)
    if &t_Co == 88
        return a:a
    else
        if a:a == 8
            return 237
        elseif a:a < 16
            return a:a
        elseif a:a > 79
            return 232 + (3 * (a:a - 80))
        else
            let l:b = a:a - 16
            let l:x = l:b % 4
            let l:y = (l:b / 4) % 4
            let l:z = (l:b / 16)
            return 16 + <SID>M(l:x) + (6 * <SID>M(l:y)) + (36 * <SID>M(l:z))
        endif
    endif
endfun

if ! exists("g:inkpot_black_background")
    let g:inkpot_black_background = 0
endif

if has("gui_running")
    if ! g:inkpot_black_background
        hi Normal         gui=NONE   guifg=#cfbfad   guibg=#1e1e27
    else
        hi Normal         gui=NONE   guifg=#cfbfad   guibg=#000000
    endif

    hi CursorLine         guibg=#2e2e37

    hi IncSearch      gui=BOLD   guifg=#303030   guibg=#cd8b60
    hi Search         gui=NONE   guifg=#303030   guibg=#cd8b60
    hi ErrorMsg       gui=BOLD   guifg=#ffffff   guibg=#ce4e4e
    hi WarningMsg     gui=BOLD   guifg=#ffffff   guibg=#ce8e4e
    hi ModeMsg        gui=BOLD   guifg=#7e7eae   guibg=NONE
    hi MoreMsg        gui=BOLD   guifg=#7e7eae   guibg=NONE
    hi Question       gui=BOLD   guifg=#ffcd00   guibg=NONE

    hi StatusLine     gui=BOLD   guifg=#b9b9b9   guibg=#3e3e5e
    hi User1          gui=BOLD   guifg=#00ff8b   guibg=#3e3e5e
    hi User2          gui=BOLD   guifg=#7070a0   guibg=#3e3e5e
    hi StatusLineNC   gui=NONE   guifg=#b9b9b9   guibg=#3e3e5e
    hi VertSplit      gui=NONE   guifg=#b9b9b9   guibg=#3e3e5e

    hi WildMenu       gui=BOLD   guifg=#eeeeee   guibg=#6e6eaf

    hi MBENormal                 guifg=#cfbfad   guibg=#2e2e3f
    hi MBEChanged                guifg=#eeeeee   guibg=#2e2e3f
    hi MBEVisibleNormal          guifg=#cfcfcd   guibg=#4e4e8f
    hi MBEVisibleChanged         guifg=#eeeeee   guibg=#4e4e8f

    hi DiffText       gui=NONE   guifg=#ffffcd   guibg=#4a2a4a
    hi DiffChange     gui=NONE   guifg=#ffffcd   guibg=#306b8f
    hi DiffDelete     gui=NONE   guifg=#ffffcd   guibg=#6d3030
    hi DiffAdd        gui=NONE   guifg=#ffffcd   guibg=#306d30

    hi Cursor         gui=NONE   guifg=#404040   guibg=#8b8bff
    hi lCursor        gui=NONE   guifg=#404040   guibg=#8fff8b
    hi CursorIM       gui=NONE   guifg=#404040   guibg=#8b8bff

    hi Folded         gui=NONE   guifg=#cfcfcd   guibg=#4b208f
    hi FoldColumn     gui=NONE   guifg=#8b8bcd   guibg=#2e2e2e

    hi Directory      gui=NONE   guifg=#00ff8b   guibg=NONE
    hi LineNr         gui=NONE   guifg=#8b8bcd   guibg=#2e2e2e
    hi NonText        gui=BOLD   guifg=#8b8bcd   guibg=NONE
    hi SpecialKey     gui=BOLD   guifg=#ab60ed   guibg=NONE
    hi Title          gui=BOLD   guifg=#af4f4b   guibg=NONE
    hi Visual         gui=NONE   guifg=#eeeeee   guibg=#4e4e8f

    hi Comment        gui=NONE   guifg=#cd8b00   guibg=NONE
    hi Constant       gui=NONE   guifg=#ffcd8b   guibg=NONE
    hi String         gui=NONE   guifg=#ffcd8b   guibg=#404040
    hi Error          gui=NONE   guifg=#ffffff   guibg=#6e2e2e
    hi Identifier     gui=NONE   guifg=#ff8bff   guibg=NONE
    hi Ignore         gui=NONE
    hi Number         gui=NONE   guifg=#f0ad6d   guibg=NONE
    hi PreProc        gui=NONE   guifg=#409090   guibg=NONE
    hi Special        gui=NONE   guifg=#c080d0   guibg=NONE
    hi SpecialChar    gui=NONE   guifg=#c080d0   guibg=#404040
    hi Statement      gui=NONE   guifg=#808bed   guibg=NONE
    hi Todo           gui=BOLD   guifg=#303030   guibg=#d0a060
    hi Type           gui=NONE   guifg=#ff8bff   guibg=NONE
    hi Underlined     gui=BOLD   guifg=#df9f2d   guibg=NONE
    hi TaglistTagName gui=BOLD   guifg=#808bed   guibg=NONE

    hi perlSpecialMatch   gui=NONE guifg=#c080d0   guibg=#404040
    hi perlSpecialString  gui=NONE guifg=#c080d0   guibg=#404040

    hi cSpecialCharacter  gui=NONE guifg=#c080d0   guibg=#404040
    hi cFormat            gui=NONE guifg=#c080d0   guibg=#404040

    hi doxygenBrief                 gui=NONE guifg=#fdab60   guibg=NONE
    hi doxygenParam                 gui=NONE guifg=#fdd090   guibg=NONE
    hi doxygenPrev                  gui=NONE guifg=#fdd090   guibg=NONE
    hi doxygenSmallSpecial          gui=NONE guifg=#fdd090   guibg=NONE
    hi doxygenSpecial               gui=NONE guifg=#fdd090   guibg=NONE
    hi doxygenComment               gui=NONE guifg=#ad7b20   guibg=NONE
    hi doxygenSpecial               gui=NONE guifg=#fdab60   guibg=NONE
    hi doxygenSpecialMultilineDesc  gui=NONE guifg=#ad600b   guibg=NONE
    hi doxygenSpecialOnelineDesc    gui=NONE guifg=#ad600b   guibg=NONE

    if v:version >= 700
        hi Pmenu          gui=NONE   guifg=#eeeeee   guibg=#4e4e8f
        hi PmenuSel       gui=BOLD   guifg=#eeeeee   guibg=#2e2e3f
        hi PmenuSbar      gui=BOLD   guifg=#eeeeee   guibg=#6e6eaf
        hi PmenuThumb     gui=BOLD   guifg=#eeeeee   guibg=#6e6eaf

        hi SpellBad     gui=undercurl guisp=#cc6666
        hi SpellRare    gui=undercurl guisp=#cc66cc
        hi SpellLocal   gui=undercurl guisp=#cccc66
        hi SpellCap     gui=undercurl guisp=#66cccc

        hi MatchParen   gui=NONE      guifg=#cfbfad   guibg=#4e4e8f
    endif
else
    if ! g:inkpot_black_background
        exec "hi Normal         cterm=NONE   ctermfg=" . (253) . " ctermbg=" . (232)
    else
        exec "hi Normal         cterm=NONE   ctermfg=" . (79) . " ctermbg=" . (16)
    endif

    exec "hi IncSearch      cterm=BOLD   ctermfg=" . (196) . " ctermbg=" . (21)
    exec "hi Search         cterm=NONE   ctermfg=" . (196) . " ctermbg=" . (21)
    exec "hi ErrorMsg       cterm=BOLD   ctermfg=" . (232) . " ctermbg=" . (124)
    exec "hi WarningMsg     cterm=BOLD   ctermfg=" . (196) . " ctermbg=" . (21)
    exec "hi ModeMsg        cterm=BOLD   ctermfg=" . (44) . " ctermbg=" . "NONE"
    exec "hi MoreMsg        cterm=BOLD   ctermfg=" . (44) . " ctermbg=" . "NONE"
    exec "hi Question       cterm=BOLD   ctermfg=" . (196) . " ctermbg=" . "NONE"

    exec "hi StatusLine     cterm=BOLD   ctermfg=" . (245) . " ctermbg=" . (234)
    exec "hi ColorColumn    cterm=BOLD   ctermfg=" . (245) . " ctermbg=" . (234)
    exec "hi User1          cterm=BOLD   ctermfg=" . (28) . " ctermbg=" . (21)
    exec "hi User2          cterm=BOLD   ctermfg=" . (39) . " ctermbg=" . (21)
    exec "hi StatusLineNC   cterm=NONE   ctermfg=" . (244) . " ctermbg=" . (234)
    exec "hi VertSplit      cterm=NONE   ctermfg=" . (244) . " ctermbg=" . (234)

    exec "hi CursorLine     cterm=UNDERLINE   ctermfg=" . (244) . " ctermbg=" . (234)

    exec "hi WildMenu       cterm=BOLD   ctermfg=" . (87) . " ctermbg=" . (38)

    exec "hi MBENormal                   ctermfg=" . (85) . " ctermbg=" . (81)
    exec "hi MBEChanged                  ctermfg=" . (87) . " ctermbg=" . (81)
    exec "hi MBEVisibleNormal            ctermfg=" . (85) . " ctermbg=" . (82)
    exec "hi MBEVisibleChanged           ctermfg=" . (87) . " ctermbg=" . (82)

    exec "hi DiffText       cterm=NONE   ctermfg=" . (79) . " ctermbg=" . (34)
    exec "hi DiffChange     cterm=NONE   ctermfg=" . (79) . " ctermbg=" . (17)
    exec "hi DiffDelete     cterm=NONE   ctermfg=" . (79) . " ctermbg=" . (32)
    exec "hi DiffAdd        cterm=NONE   ctermfg=" . (79) . " ctermbg=" . (20)

    exec "hi Folded         cterm=NONE   ctermfg=" . (79) . " ctermbg=" . (35)
    exec "hi FoldColumn     cterm=NONE   ctermfg=" . (39) . " ctermbg=" . (80)

    exec "hi Directory      cterm=NONE   ctermfg=" . (28) . " ctermbg=" . "NONE"
    exec "hi LineNr         cterm=NONE   ctermfg=" . (60) . " ctermbg=" . (232)
    exec "hi NonText        cterm=BOLD   ctermfg=" . (39) . " ctermbg=" . "NONE"
    exec "hi SpecialKey     cterm=BOLD   ctermfg=" . (55) . " ctermbg=" . "NONE"
    exec "hi Title          cterm=BOLD   ctermfg=" . (196) . " ctermbg=" . "NONE"
    exec "hi Visual         cterm=NONE   ctermfg=" . (253) . " ctermbg=" . (61)

    exec "hi Comment        cterm=NONE   ctermfg=" . (236)  . " ctermbg=" . "NONE"

    exec "hi Constant       cterm=NONE   ctermfg=" . (99) . " ctermbg=" . "NONE"
    exec "hi String         cterm=NONE   ctermfg=" . (149) . " ctermbg=" . "NONE"
    exec "hi Character      cterm=NONE   ctermfg=" . (142) . " ctermbg=" . "NONE"
    exec "hi Number         cterm=NONE   ctermfg=" . (99) . " ctermbg=" . "NONE"

    exec "hi Identifier     cterm=NONE   ctermfg=" . (135) . " ctermbg=" . "NONE"

    exec "hi Statement      cterm=NONE   ctermfg=" . (31) . " ctermbg=" . "NONE"
    exec "hi Conditional    cterm=NONE   ctermfg=" . (31) . " ctermbg=" . "NONE"
    exec "hi Repeat         cterm=NONE   ctermfg=" . (31) . " ctermbg=" . "NONE"
    exec "hi Label          cterm=NONE   ctermfg=" . (31) . " ctermbg=" . "NONE"
    exec "hi Operator       cterm=NONE   ctermfg=" . (31) . " ctermbg=" . "NONE"
    exec "hi Keyword        cterm=NONE   ctermfg=" . (31) . " ctermbg=" . "NONE"
    exec "hi Exception      cterm=NONE   ctermfg=" . (31) . " ctermbg=" . "NONE"

    exec "hi PreProc        cterm=NONE   ctermfg=" . (30) . " ctermbg=" . "NONE"

    exec "hi Type           cterm=NONE   ctermfg=" . (35) . " ctermbg=" . "NONE"
    exec "hi StorageClass   cterm=NONE   ctermfg=" . (35) . " ctermbg=" . "NONE"
    exec "hi Structure      cterm=NONE   ctermfg=" . (35) . " ctermbg=" . "NONE"
    exec "hi Typedef        cterm=NONE   ctermfg=" . (35) . " ctermbg=" . "NONE"

    exec "hi Special        cterm=NONE   ctermfg=" . (54) . " ctermbg=" . "NONE"
    exec "hi SpecialChar    cterm=NONE   ctermfg=" . (142) . " ctermbg=" . "NONE"

    exec "hi Underlined     cterm=BOLD   ctermfg=" . (77) . " ctermbg=" . "NONE"

    exec "hi Ignore         cterm=NONE"

    exec "hi Error          cterm=BOLD   ctermfg=" . (232) . " ctermbg=" . (124)

    exec "hi Todo           cterm=BOLD   ctermfg=" . (16) . " ctermbg=" . (57)

    exec "hi TaglistTagName cterm=BOLD   ctermfg=" . (39) . " ctermbg=" . "NONE"

    if v:version >= 700
        exec "hi Pmenu          cterm=NONE   ctermfg=" . (87) . " ctermbg=" . (82)
        exec "hi PmenuSel       cterm=BOLD   ctermfg=" . (87) . " ctermbg=" . (38)
        exec "hi PmenuSbar      cterm=BOLD   ctermfg=" . (87) . " ctermbg=" . (39)
        exec "hi PmenuThumb     cterm=BOLD   ctermfg=" . (87) . " ctermbg=" . (39)

        exec "hi SpellBad       cterm=NONE ctermbg=" . (32)
        exec "hi SpellRare      cterm=NONE ctermbg=" . (33)
        exec "hi SpellLocal     cterm=NONE ctermbg=" . (36)
        exec "hi SpellCap       cterm=NONE ctermbg=" . (21)
        exec "hi MatchParen     cterm=NONE ctermbg=" . (14) . "ctermfg=" . (25)
    endif
endif

" vim: set et :
