import System.Posix.Env (getEnv)
import Data.Maybe (maybe)
import Data.Bits ((.|.))

import XMonad
import XMonad.Hooks.SetWMName
import XMonad.Util.CustomKeys
import XMonad.Util.EZConfig

main = xmonad $ def
    { borderWidth       = 0
    , terminal          = "urxvtc" 
    -- this is to fix java awt failing because it has a whitelist of wms
    , startupHook       = setWMName "LG3D"
    --, modMask           = mod4Mask
    } `additionalKeysP` bindings

bindings = [slock, chrome, scrot]
    where slock  = ("M-S-l", spawn "slock")
          chrome = ("M-c", spawn "google-chrome-stable")
          scrot  = ("M-s", spawn "scrot -e 'mv $f ~/Documents/screenshots'")
