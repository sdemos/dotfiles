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

exec "hi Comment        cterm=NONE   ctermfg=" . (237)  . " ctermbg=" . "NONE"

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

" vim: set et :
