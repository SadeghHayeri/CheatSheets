package main

import "fmt"
import "math"
import "runtime"
import "time"

func main() {
	fmt.Println(math.Pi)	// only start with Upper case names can be exportable
	a, b := swap("hello", "world")
	fmt.Println(a, b)
}

// Functions
func add(x int, y int) int {
	return x + y
}

// Multiple results
func swap(x, y string) (string, string) {
	return y, x
}

// Named return values (should be used only in short functions)
func split(sum int) (x, y int) {
	x = sum * 4 / 9
	y = sum - x
	return	// "naked" return. (returns the named return values)
}

// Variables
var x int
var i, j int = 1, 2


// Basic types
/*
bool

string

int  int8  int16  int32  int64
uint uint8 uint16 uint32 uint64 uintptr

byte // alias for uint8

rune // alias for int32
     // represents a Unicode code point

float32 float64

complex64 complex128

in Go assignment between items of different type requires an explicit conversion
*/

// Zero values
/*
0 for numeric types,
false for the boolean type, and
"" (the empty string) for strings.
*/

// For
func forfunc(x int, y int) int {
	sum := 0
	for i := 0; i < 10; i++ {
		sum += i
	}
	return sum
}

// While
func whilefunc() int {
	sum2 := 1
	for sum2 < 1000 {
		sum2 += sum2
	}
	return sum2
}

// Forever
func Forever() int {
	for {
		fmt.Println("ok")
	}
}

// If
func sqrt(x float64) string {
	if x < 0 {
		return sqrt(-x) + "i"
	}
	return fmt.Sprint(math.Sqrt(x))
}

// If with a short statement
func pow(x, n, lim float64) float64 {
	if v := math.Pow(x, n); v < lim {
		return v
	}
	return lim
}

// Else
func elsefunc(x, n, lim float64) float64 {
	if v := math.Pow(x, n); v < lim {
		return v
	} else {
		fmt.Printf("%g >= %g\n", v, lim)
	}
	// can't use v here, though
	return lim
}

// Switch Case
func sc() {
	fmt.Print("Go runs on ")
	switch os := runtime.GOOS; os {
	case "darwin":
		fmt.Println("OS X.")
	case "linux":
		fmt.Println("Linux.")
	default:
		// freebsd, openbsd,
		// plan9, windows...
		fmt.Printf("%s.", os)
	}
}

// clean way to write long if-then-else chains
func cleansw() {
	t := time.Now()
	switch {
	case t.Hour() < 12:
		fmt.Println("Good morning!")
	case t.Hour() < 17:
		fmt.Println("Good afternoon.")
	default:
		fmt.Println("Good evening.")
	}
}

// defer (defers the execution of a function until the surrounding function returns)
func deferfunc() {
	defer fmt.Println("world")
	fmt.Println("hello")
}

// pointer
func pointers() {
	i, j := 42, 2701

	p := &i         // point to i
	fmt.Println(*p) // read i through the pointer
	*p = 21         // set i through the pointer
	fmt.Println(i)  // see the new value of i

	p = &j         // point to j
	*p = *p / 37   // divide j through the pointer
	fmt.Println(j) // see the new value of j
}

// struct
type Vertex struct {
	X int
	Y int
}

func structFunc() {
	v := Vertex{1, 2}
	v.X = 4

	// Pointers to structs
	p := &v
	(*p).X = 3
	p.X = 3

	v1 = Vertex{1, 2}  // has type Vertex
	v2 = Vertex{X: 1}  // Y:0 is implicit
	v3 = Vertex{}      // X:0 and Y:0
	p  = &Vertex{1, 2} // has type *Vertex
}


// array (arrays cannot be resized)
func array() {
	var a [2]string
	a[0] = "Hello"
	a[1] = "World"
	fmt.Println(a[0], a[1])
	fmt.Println(a)

	primes := [6]int{2, 3, 5, 7, 11, 13}
	fmt.Println(primes)
}

// slice
func slice() {
	primes := [6]int{2, 3, 5, 7, 11, 13}
	var s []int = primes[1:4]	// creates a slice of the 1-4 elements of the array primes


	// Changing the elements of a slice modifies the corresponding elements of its underlying array.
	names := [4]string{
		"John",
		"Paul",
		"George",
		"Ringo",
	}

	a := names[0:2]
	b := names[1:3]

	b[0] = "XXX"
	fmt.Println(a, b)
	fmt.Println(names)



	// Slice defaults
	s := []int{2, 3, 5, 7, 11, 13}

	s = s[1:4]
	fmt.Println(s)

	s = s[:2]
	fmt.Println(s)

	s = s[1:]
	fmt.Println(s)




	fmt.Printf("len=%d cap=%d %v\n", len(s), cap(s), s)	// len(x) and cap(x)
	if s == nil {	// The zero value of a slice is nil.
		fmt.Println("nil!")
	}



	// Creating a slice with make
	a := make([]int, 5)  // len(a)=5
	b := make([]int, 0, 5) // len(b)=0, cap(b)=5
	b = b[:cap(b)] // len(b)=5, cap(b)=5
	b = b[1:]      // len(b)=4, cap(b)=4


	// Create a 2D board.
	board := [][]string{
		[]string{"_", "_", "_"},
		[]string{"_", "_", "_"},
		[]string{"_", "_", "_"},
	}

	// append works on nil slices.
	s = append(s, 0)
}






func range() {
	var pow = []int{1, 2, 4, 8, 16, 32, 64, 128}
	for i, v := range pow {
		// The first is the index, and the second is a copy of the element at that index
		fmt.Printf("2**%d = %d\n", i, v)
	}
}






func mapp() {
	type Vertex struct {
		Lat, Long float64
	}

	m = make(map[string]Vertex)
	m["Bell Labs"] = Vertex{
		40.68433, -74.39967,
	}

	var m = map[string]Vertex{
		"Bell Labs": {40.68433, -74.39967},
		"Google":    {37.42202, -122.08408},
	}

	fmt.Println(m["Bell Labs"])
}

func mapl() {
	m := make(map[string]int)

	m["Answer"] = 42
	fmt.Println("The value:", m["Answer"])

	m["Answer"] = 48
	fmt.Println("The value:", m["Answer"])

	delete(m, "Answer")
	fmt.Println("The value:", m["Answer"])

	v, ok := m["Answer"]
	fmt.Println("The value:", v, "Present?", ok)
}




func compute(fn func(float64, float64) float64) float64 {
	return fn(3, 4)
}

func fp() {
	hypot := func(x, y float64) float64 {
		return math.Sqrt(x*x + y*y)
	}
	fmt.Println(hypot(5, 12))

	fmt.Println(compute(hypot))
	fmt.Println(compute(math.Pow))
}
