Imports System

Module Program
    Public Sub Main(args As String())

        Dim length As Integer = 10

        Dim password As String = GeneratePassword(length)

        Console.WriteLine("Generated Password: " & password)
    End Sub

    Public Function GeneratePassword(length As Integer) As String
        Dim random As New Random()
        Dim chars As String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+{}[]"
        Dim password As New System.Text.StringBuilder()

        For i As Integer = 1 To length
            Dim randomIndex As Integer = random.Next(0, chars.Length)
            password.Append(chars(randomIndex))
        Next

        Return password.ToString()
    End Function
End Module
