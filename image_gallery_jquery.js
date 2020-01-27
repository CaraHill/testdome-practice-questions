function setup () {
  $(".remove").on("click", function() {
    $(this).parent().remove();
  });
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

$(".remove").get(0).click();
console.log(document.body.innerHTML);
