-- default desktop configuration for Fedora

import System.Posix.Env (getEnv)
import Data.Maybe (maybe)

import XMonad
import XMonad.Hooks.SetWMName

main = xmonad $ defaultConfig
	{ borderWidth		= 0
	, terminal			= "urxvt" 
    , startupHook       = setWMName "LG3D"
	}
