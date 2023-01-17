import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Util.Cursor (setDefaultCursor)

main :: IO()
main = do
    xmobar myConfig >>= xmonad
    --xmonad myConfig
    --config <- myConfig
    --xmonad config
    --xmobar myConfig >>= xmonad

myConfig = defaultConfig
    { -- ここに設定を記載 
      terminal = myTerminal
    , startupHook = myStartupHook
    , modMask = mod4Mask -- 有効にするとMODキーがWinキーに変更される
    }

myStartupHook = do
    setDefaultCursor xC_left_ptr

myTerminal = "xterm"
