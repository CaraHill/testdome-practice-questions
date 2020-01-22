// https://www.testdome.com/d/javascript-interview-questions/2

function removeProperty(obj, prop) {
  if(Object.keys(obj).indexOf(prop) > -1) {
    delete obj[prop];
    return true;
  }

  return false;
}
