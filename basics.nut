// Single-line comments start with two slashes.

# This is also a single-line comment.

/* Multiline comments start with slash-star,
   and end with star-slash. */



/* Squirrel is a dynamically typed language so variables do not have a type, although they
   refer to a value that does have a type. Squirrel basic types are integer, float, string,
   null, table, array, function, generator, class, instance, bool, thread and userdata. */

/* Integer
   An Integer represents a 32 bits (or better) signed number. */
local value = (123 + 1) << 2; // operators like left shift(<<) are also supported.
local hexadecimalAndOctal= 0x0BBC + 0742// Semicolons are optional. (。・∀・)ノ
local charcode = 'w'; // Unlike javascript, it's not a string but integer.



/* Float
   A float represents a 32 bits (or better) floating point number. */
local float = 0.3;
local scientificNotation = 1.e-2;



/* String
   Strings are an immutable sequence of characters to modify a string is necessary create a new one.
   Squirrel’s strings, behave like C or C++, are delimited by quotation marks(") and can contain 
   escape sequences(\t, \a, \b, \n, \r, \v, \f, \\, \", \', \0, \x<hh>, \u<hhhh> and \U<hhhhhhhh>). */
print("hello world\n");

/* Verbatim string literals begin with @" and end with the matching quote. Verbatim string literals
   also can extend over a line break. If they do, they include any white space characters between the quotes. */
print(@"\n means line break, like
this
");



/* Null
   The null value is a primitive value that represents the null, empty, or non-existent reference.
   The type Null has exactly one value, called null. */
local nullValue = null;



/* Bool
   the bool data type can have only two. They are the literals true and false. A bool value
   expresses the validity of a condition (tells whether the condition is true or false). */
local trueValue = true;
local falseValue = !trueValue && true || false;



/* Table
   Tables are associative containers implemented as pairs of key/value (called a slot). */
local emptyTable = {};
local dog = 
{
    name = "Toby Fox",
    isAnnoying = true,
    legs = 4,
    printSelf = function() { print(this["name"] + " has " + this.legs + " legs and is annoying:" + isAnnoying)}
}
dog.printSelf();



/* Array
   Arrays are simple sequence of objects, their size is dynamic and their index starts always from 0. */
local emptyArray = [];
local mixedArray = 
[
    "hello",
    123,
    false
]
local tripleSix = array(3,6); // creates an array size of 3, filled with 6.



/* Functions
   Functions are similar to those in other C-like languages and to most programming languages in general,
   however there are a few key differences. */

// Define a function called println that accepts 1 argument.
function println(x)
{
    print(x + "\n"); // When appending string to x it implicitly calls x.tostring()
}

// Namespaces
Utils <- // Use <- instead of = when creating new slot, this is equal to "local Utils = {...}"
{
    Math = {}
}

function Utils::Math::Fibonacci(a,b)
{
    // TODO
}
