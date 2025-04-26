package main

import "fmt"

func main() {
	exibir_numero_divisivel(3)
}

func exibir_numero_divisivel(n int) {
	for i := 1; i <= 100; i++ {
		if i%n == 0 {
			fmt.Printf("Número %d é divisivel por %d!\n", i, n)
		}
	}
}
