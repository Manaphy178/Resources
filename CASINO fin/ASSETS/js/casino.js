const start = document.querySelector("#start");
const canvas = document.getElementById("canvas");
canvas.setAttribute("width", window.screen.width);

start.addEventListener("click", () => {
  start.style.display = "none";
  const items = document.querySelectorAll("#itemRoulette");
  items.forEach((item) => {
    item.classList.add("izq");
    item.classList.remove("izqParar");
    item.classList.remove("pausa");
  });
  let ruleta = setTimeout(parar, 3000);
});

function parar() {
  console.log("para");
  const items = document.querySelectorAll("#itemRoulette");
  items.forEach((item) => {
    item.classList.remove("izq");
    item.classList.add("izqParar");
  });
  let stop = setTimeout(() => {
    const items = document.querySelectorAll("#itemRoulette");
    console.log("stop");
    items.forEach((item) => {
      item.classList.remove("izqParar");
      item.classList.add("pausa");
    });
  }, 2000);
  let timeOutBoton = setTimeout(() => {
    start.style.display = "block";
  }, 4000);
}
