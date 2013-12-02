-- default desktop configuration for Fedora

import System.Posix.Env (getEnv)
import Data.Maybe (maybe)

import XMonad

main = xmonad $ defaultConfig
	{ borderWidth		= 0
	, terminal			= "urxvt" 
	, modMask			= mod4Mask
	}
