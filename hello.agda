-- Hello World in Agda

module hello where
    open import IO
    main = run (outStrLn "Hello, World!")