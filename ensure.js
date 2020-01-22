// https://www.testdome.com/d/javascript-interview-questions/2

function ensure(value) {
  if(value === undefined) {
    throw "Value is undefined";
  }

  return value;
}

try {
  console.log(ensure());
} catch(err) {
  console.log(err);
}
