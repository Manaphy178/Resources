const start = document.querySelector("#start");
const canvas = document.getElementById("canvas");
canvas.setAttribute("width", window.screen.width);
let ctx = canvas.getContext("2d");

// Aqui hay que poner codigo de java como una puta
// Ya sea para crear todas las imagenes posibles o para ir cambiandolas rara vez
const producto1 = document.getElementById("itemCaja");
let xproduct1 = 0;
let xproduct2 = 200;
let xproduct3 = 400;
let xproduct4 = 600;
let xproduct5 = 800;
let xproduct6 = 1000;
let xproduct7 = 1200;
let xproduct8 = 1400;
let xproduct9 = 1600;
let xproduct10 = 1800;
let xproduct11 = 2000;
let xproduct12 = 2200;
item1 = crearItem(0, 0, 200, 150);
item2 = crearItem(200, 0, 200, 150);
item3 = crearItem(400, 0, 200, 150);
item4 = crearItem(600, 0, 200, 150);
item5 = crearItem(800, 0, 200, 150);
item6 = crearItem(1000, 0, 200, 150);
item7 = crearItem(1200, 0, 200, 150);
item8 = crearItem(1400, 0, 200, 150);
item9 = crearItem(1600, 0, 200, 150);
item10 = crearItem(1800, 0, 200, 150);
item11 = crearItem(2000, 0, 200, 150);
item12 = crearItem(2200, 0, 200, 150);
item13 = crearItem(2400, 0, 200, 150);
item14 = crearItem(2600, 0, 200, 150);
// item15 = crearItem(2800, 0, 200, 150);
// item16 = crearItem(3000, 0, 200, 150);
// item17 = crearItem(3200, 0, 200, 150);

function pintar() {
  ctx.clearRect(100, 100, canvas.width, canvas.height);
  ctx.drawImage(producto1, item1.x, 0, 200, 150);
  ctx.drawImage(producto1, item2.x, 0, 200, 150);
  ctx.drawImage(producto1, item3.x, 0, 200, 150);
  ctx.drawImage(producto1, item4.x, 0, 200, 150);
  ctx.drawImage(producto1, item5.x, 0, 200, 150);
  ctx.drawImage(producto1, item6.x, 0, 200, 150);
  ctx.drawImage(producto1, item7.x, 0, 200, 150);
  ctx.drawImage(producto1, item8.x, 0, 200, 150);
  ctx.drawImage(producto1, item9.x, 0, 200, 150);
  ctx.drawImage(producto1, item10.x, 0, 200, 150);
  ctx.drawImage(producto1, item11.x, 0, 200, 150);
  ctx.drawImage(producto1, item12.x, 0, 200, 150);
  ctx.drawImage(producto1, item13.x, 0, 200, 150);
  ctx.drawImage(producto1, item14.x, 0, 200, 150);
  // ctx.drawImage(producto1, item15.x, 0, 200, 150);
  // ctx.drawImage(producto1, item16.x, 0, 200, 150);
  // ctx.drawImage(producto1, item17.x, 0, 200, 150);
  mover(item1);
  mover(item2);
  mover(item3);
  mover(item4);
  mover(item5);
  mover(item6);
  mover(item7);
  mover(item8);
  mover(item9);
  mover(item10);
  mover(item11);
  mover(item12);
  mover(item13);
  mover(item14);
}

function mover(item) {
  if (item.x < -200) {
    item.x = 2600;
  } else {
    item.x -= 1;
  }
}
function crearItem(xItem, yItem, anchoItem, altoItem) {
  let item = {
    x: xItem,
    y: yItem,
    ancho: anchoItem,
    alto: altoItem,
  };
  return item;
}
let timer = setInterval(pintar, 1);

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
