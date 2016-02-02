import System.Posix.Env (getEnv)
import Data.Maybe (maybe)
import Data.Bits ((.|.))

import XMonad
import XMonad.Hooks.SetWMName
import XMonad.Util.CustomKeys

main = xmonad $ defaultConfig
    { borderWidth       = 0
    , terminal          = "urxvtc" 
    -- this is to fix java awt failing because it has a whitelist of wms
    , startupHook       = setWMName "LG3D"
    --, modMask           = mod4Mask
    , keys              = customKeys (const []) bindings
    }

bindings conf@(XConfig {modMask = modm}) = [slock, chrome]
    where slock  = ((modm .|. shiftMask, xK_l), spawn "slock")
          chrome = ((modm, xK_c), spawn "google-chrome-stable")
