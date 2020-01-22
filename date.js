// https://www.testdome.com/d/javascript-interview-questions/2

function formatDate(userDate) {
  let dateComponent = userDate.split('/');

  if(dateComponent[0].length == 1) {
    dateComponent[0] = dateComponent[0].padStart(2, "0")
  }

  if(dateComponent[1].length == 1) {
    dateComponent[1] = dateComponent[1].padStart(2, "0")
  }

  return `${dateComponent[2]}${dateComponent[0]}${dateComponent[1]}`;
}

console.log(formatDate("12/31/2014"));
