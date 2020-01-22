//https://www.testdome.com/d/javascript-interview-questions/2

function setup() {
  const removeButtons = document.getElementsByClassName("remove")

  for (let i = 0; i < removeButtons.length; i++) {
    removeButtons[i].addEventListener("click", removeImage);
  }

  function removeImage() {
    this.parentNode.parentNode.removeChild(this.parentNode);
  }
}

// Example case.
document.body.innerHTML = `
<div class="image">
  <img src="https://goo.gl/kjzfbE" alt="First">
  <button class="remove">X</button>
</div>
<div class="image">
  <img src="https://goo.gl/d2JncW" alt="Second">
  <button class="remove">X</button>
</div>`;

setup();

document.getElementsByClassName("remove")[0].click();
console.log(document.body.innerHTML);
