const start = document.querySelector("#start");
const canvas = document.getElementById("canvas");
canvas.setAttribute("width", window.screen.width);
let ctx = canvas.getContext("2d");
let movement = false;
let timer = setInterval(pintar, 1);
let velocidad = 0;
let vez = 1;
// Aqui hay que poner codigo de java como una puta
// Ya sea para crear todas las imagenes posibles o para ir cambiandolas rara vez
const producto1 = document.getElementById("itemCaja1");
const producto2 = document.getElementById("itemCaja2");
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
item2 = crearItem(item1.x+200, 0, 200, 150);
item3 = crearItem(item2.x+200, 0, 200, 150);
item4 = crearItem(item3.x+200, 0, 200, 150);
item5 = crearItem(item4.x+200, 0, 200, 150);
item6 = crearItem(item5.x+200, 0, 200, 150);
item7 = crearItem(item6.x+200, 0, 200, 150);
item8 = crearItem(item7.x+200, 0, 200, 150);
item9 = crearItem(item8.x+200, 0, 200, 150);
item10 = crearItem(item9.x+200, 0, 200, 150);
item11 = crearItem(item10.x+200, 0, 200, 150);
item12 = crearItem(item11.x+200, 0, 200, 150);
item13 = crearItem(item12.x+200, 0, 200, 150);
item14 = crearItem(item13.x+200, 0, 200, 150);
// item15 = crearItem(2800, 0, 200, 150);
// item16 = crearItem(3000, 0, 200, 150);
// item17 = crearItem(3200, 0, 200, 150);
const items = [
  item1,
  item2,
  item3,
  item4,
  item5,
  item6,
  item7,
  item8,
  item9,
  item10,
  item11,
  item12,
  item13,
  item14,
  // ,item15,
  // item16,
  // item17,
];
function pintar() {
  ctx.clearRect(100, 100, canvas.width, canvas.height);
  ctx.drawImage(producto1, item1.x, 0, 200, 150);
  ctx.drawImage(producto2, item2.x, 0, 200, 150);
  ctx.drawImage(producto1, item3.x, 0, 200, 150);
  ctx.drawImage(producto2, item4.x, 0, 200, 150);
  ctx.drawImage(producto1, item5.x, 0, 200, 150);
  ctx.drawImage(producto2, item6.x, 0, 200, 150);
  ctx.drawImage(producto1, item7.x, 0, 200, 150);
  ctx.drawImage(producto2, item8.x, 0, 200, 150);
  ctx.drawImage(producto1, item9.x, 0, 200, 150);
  ctx.drawImage(producto2, item10.x, 0, 200, 150);
  ctx.drawImage(producto1, item11.x, 0, 200, 150);
  ctx.drawImage(producto2, item12.x, 0, 200, 150);
  ctx.drawImage(producto1, item13.x, 0, 200, 150);
  ctx.drawImage(producto2, item14.x, 0, 200, 150);
  // ctx.drawImage(producto1, item15.x, 0, 200, 150);
  // ctx.drawImage(producto1, item16.x, 0, 200, 150);
  // ctx.drawImage(producto1, item17.x, 0, 200, 150);
  if (movement) {
    items.forEach((item) => {
      mover(item);
    });
    if (velocidad > 0 && vez > 0) {
      vez = 0;
      let irFrenando = setTimeout(frenar, 750);
    }
  } else if (velocidad == 0) {
    start.style.display = "block";
  }

  start.addEventListener("click", () => {
    velocidad = 20;
    start.style.display = "none";
    movement = true;
  });
}

function mover(item) {
  if (item.x <= -200) {
    item.x = canvas.width+200;
  } else {
    item.x -= velocidad;
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
function frenar() {
  console.log("algo");

  velocidad -= 2;
  if (velocidad == 0) {
    movement = false;
  }
  vez = 1;
}

// start.addEventListener("click", () => {
//   start.style.display = "none";
//   const items = document.querySelectorAll("#itemRoulette");
//   items.forEach((item) => {
//     item.classList.add("izq");
//     item.classList.remove("izqParar");
//     item.classList.remove("pausa");
//   });
//   let ruleta = setTimeout(parar, 3000);
// });

// function parar() {
//   console.log("para");
//   const items = document.querySelectorAll("#itemRoulette");
//   items.forEach((item) => {
//     item.classList.remove("izq");
//     item.classList.add("izqParar");
//   });
//   let stop = setTimeout(() => {
//     const items = document.querySelectorAll("#itemRoulette");
//     console.log("stop");
//     items.forEach((item) => {
//       item.classList.remove("izqParar");
//       item.classList.add("pausa");
//     });
//   }, 2000);
//   let timeOutBoton = setTimeout(() => {
//     start.style.display = "block";
//   }, 4000);
// }
