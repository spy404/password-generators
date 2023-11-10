(defn generate-password
  ([length]
   (let [chars "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+{}[]"
         random-char (fn [] (get chars (rand-int (count chars))))]
     (apply str (repeatedly length random-char)))))

(defn -main []

  (let [length 10]
    (let [password (generate-password length)]
      (println (password))))
  (System/exit 0))
