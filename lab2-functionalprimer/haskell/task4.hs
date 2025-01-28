ask :: String -> IO ()
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  --if line == ""
    --then ask prompt
    --else putStrLn ("you said: " ++ reverse line)

  if line == "quit" then putStrLn "quitting..." else if line == "" then ask prompt else putStrLn("you said: " ++ reverse line ) 

repPrompt :: String
repPrompt = "!" + 1

main :: IO ()
main =
  do
  let prompt = "please say something" ++ repPrompt
  ask prompt