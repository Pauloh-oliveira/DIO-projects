package main

import "fmt"

func main() {
	pin_pan()
}

func pin_pan() {
	for i := 1; i <= 100; i++ {
		if i%3 == 0 && i%5 == 0 {
			fmt.Println(i, ": Pin Pan")
		} else if i%3 == 0 {
			fmt.Println(i, ": Pin")
		} else if i%5 == 0 {
			fmt.Println(i, ": Pan")
		}
	}

}
