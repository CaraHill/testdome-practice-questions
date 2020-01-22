// https://www.testdome.com/d/javascript-interview-questions/2

function createCheckDigit(membershipId) {
  let digit = stringSum(membershipId);

  while (digit > 9) digit = stringSum(digit);

  return digit;
}

function stringSum(stringNumber) {
  return stringNumber.toString().split('').reduce((a, b) => parseInt(a) + parseInt(b), 0);
}

console.log(createCheckDigit("55555"));
