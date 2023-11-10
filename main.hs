import System.Random (randomRIO)

generatePassword :: Int -> IO String
generatePassword length = do
  let chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+{}[]"
  password <- mapM (\_ -> randomChar chars) [1..length]
  return password

randomChar :: String -> IO Char
randomChar chars = do
  randomIndex <- randomRIO (0, length chars - 1)
  return (chars !! randomIndex)

main :: IO ()
main = do
  password <- generatePassword 10
  putStrLn password
