package main

import (
  "fmt"
  "math/rand"
  "time"
)

func generatePassword(length int) string {
  charset := "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
  password := make([]byte, length)

  rand.Seed(time.Now().UnixNano())

  for i := 0; i < length; i++ {
    randomIndex := rand.Intn(len(charset))
    password[i] = charset[randomIndex]
  }

  return string(password)
}

func main() {
  password := generatePassword(10)
  fmt.Println(password)
}
