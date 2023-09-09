// VARIABLE

var value = 18;
var myName = "Peppo";

int value1 = 19;
String myName1 = "Silpiana";

// almost never use

dynamic value2 = 10;
dynamic myName2 = "Pep";
// dynamic can be assigned with any value
// need to work with checks and type casts
// the only case when JSON encoding and decoding

// TIPS
// 1. prefer initialize variable with 'var' as much as you can
// 2. when the type is not so easy to guess, initialize it explicitly
// 3. use 'Object' or 'dynamic' only if it's really needed

// INITIALIZATION

// BAD: hard to read
// List<List<Toppings>> pizza = List<List<Toppings>>();
// for (List<Toppings> topping in pizza) {
  // do something
// }