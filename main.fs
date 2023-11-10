open System

let generatePassword (length: int) =
    let random = Random()
    let chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+{}[]"
    let password = new System.Text.StringBuilder()

    for i = 1 to length do
        let randomIndex = random.Next(0, chars.Length)
        password.Append(chars.[randomIndex])

    password.ToString()

[<EntryPoint>]
let main argv =

    let length = 10

    let password = generatePassword length
    printfn "Generated Password: %s" password

    0
