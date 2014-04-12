// Just going to write everything as function expressions

r_fib = function(n) {
  if ((n == 1) || (n == 2)) {
    return 1;
  } else {
    return r_fib(n - 1) + r_fib(n - 2)
  }
}


console.log(r_fib(10));

/* there isn't a clean way to do if __name__ == "__main__":..
 * unless doing:
 *  var main = function() {
 *  // main code
 *  } 
 *  
 *  if (require.main === module) {
 *      main();
 *  }
 */


