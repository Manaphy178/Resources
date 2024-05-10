const start = document.querySelector("#start");
const canvas = document.getElementById("canvas");
const canvDiv = document.querySelector("#canv");
canvas.setAttribute("width", window.innerWidth);
let ctx = canvas.getContext("2d");
let ultimoItemIdColisionado = null;
let colisionDetectada = false;
let movement = false;
let timer = setInterval(pintar, 1);
let velocidad = 0;
let vez = 1;
let lineaImg = document.getElementById("linea");

// Aqui hay que poner codigo de java como una puta
// Ya sea para crear todas las imagenes posibles o para ir cambiandolas rara vez

// let xproduct1 = 0;
// let xproduct2 = 200;
// let xproduct3 = 400;
// let xproduct4 = 600;
// let xproduct5 = 800;
// let xproduct6 = 1000;
// let xproduct7 = 1200;
// let xproduct8 = 1400;
// let xproduct9 = 1600;
// let xproduct10 = 1800;
// let xproduct11 = 2000;
// let xproduct12 = 2200;
// const producto1 = document.getElementById("itemCaja1");
// const producto2 = document.getElementById("itemCaja2");

item1 = crearItem(0, 0, 0, 200, 150, "black");
item2 = crearItem(1, item1.x + 200, 0, 200, 150, "black");
item3 = crearItem(2, item2.x + 200, 0, 200, 150, "black");
item4 = crearItem(3, item3.x + 200, 0, 200, 150, "black");
item5 = crearItem(4, item4.x + 200, 0, 200, 150, "black");
item6 = crearItem(5, item5.x + 200, 0, 200, 150, "black");
item7 = crearItem(6, item6.x + 200, 0, 200, 150, "black");
item8 = crearItem(7, item7.x + 200, 0, 200, 150, "black");
item9 = crearItem(8, item8.x + 200, 0, 200, 150, "black");
item10 = crearItem(9, item9.x + 200, 0, 200, 150, "black");
item11 = crearItem(10, item10.x + 200, 0, 200, 150, "black");
item12 = crearItem(11, item11.x + 200, 0, 200, 150, "black");
item13 = crearItem(12, item12.x + 200, 0, 200, 150, "black");
item14 = crearItem(13, item13.x + 200, 0, 200, 150, "black");
linea = crearItem(canvas.width / 2, 0, 10, 150, "black");
const img1 = document.getElementById("img1");
const img2 = document.getElementById("img2");
const img3 = document.getElementById("img3");
const img4 = document.getElementById("img4");
const img5 = document.getElementById("img5");
const img6 = document.getElementById("img6");
const img7 = document.getElementById("img7");
const img8 = document.getElementById("img8");
const img9 = document.getElementById("img9");
const img10 = document.getElementById("img10");
const img11 = document.getElementById("img11");
const img12 = document.getElementById("img12");
const img13 = document.getElementById("img13");
const img14 = document.getElementById("img14");

// Van a ser siempre las misma longitud de imagenes y de items
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
];

const imgs = [
  img1,
  img2,
  img3,
  img4,
  img5,
  img6,
  img7,
  img8,
  img9,
  img10,
  img11,
  img12,
  img13,
  img14,
];

function pintar() {
  ctx.canvas.width = window.innerWidth;
  linea.x = canvas.width / 2;
  ctx.clearRect(100, 100, canvas.width, canvas.height);
  for (let i = 0; i < items.length; i++) {
    ctx.drawImage(
      imgs[i],
      items[i].x,
      items[i].y,
      items[i].ancho,
      items[i].alto
    );
  }
  ctx.drawImage(lineaImg, linea.x, 0, 10, 150);
  if (movement) {
    items.forEach((item) => {
      if (!colisionDetectada && colision(item)) {
        colisionDetectada = true;
        if (vez > 0) {
          vez = 0;
          frenar();
          console.log(item.id);
          ultimoItemIdColisionado = item.id;
        }
      }
      mover(item);
    });

    //   if (velocidad > 0 && vez > 0) {
    //     vez = 0;
    //     let irFrenando = setTimeout(frenar, 750);
    //   }
    // } else if (velocidad == 0) {
    //   start.style.display = "block";
    // }

    ctx.clearRect(100, 100, canvas.width, canvas.height);
    for (let i = 0; i < items.length; i++) {
      ctx.drawImage(
        imgs[i],
        items[i].x,
        items[i].y,
        items[i].ancho,
        items[i].alto
      );
    }
    ctx.drawImage(lineaImg, linea.x, 0, 10, 150);
  }
  if (velocidad == 0) {
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
    item.x = canvas.width + 200;
  } else {
    item.x -= velocidad;
  }
  // Problema aqui
  if (!colision(item)) {
    colisionDetectada = false;
  }
}

function crearItem(idItem, xItem, yItem, anchoItem, altoItem, colorItem) {
  let item = {
    id: idItem,
    x: xItem,
    y: yItem,
    ancho: anchoItem,
    alto: altoItem,
    color: colorItem,
  };
  return item;
}

function frenar() {
  velocidad -= 2;
  if (velocidad == 0) {
    movement = false;
    console.log(
      "El último item que colisionó tiene el ID:",
      ultimoItemIdColisionado
    );
  }
  vez = 1;
}

function colision(item) {
  const tolerancia = 5; // Puedes ajustar este valor según sea necesario
  // Comprobamos si la coordenada x del elemento está dentro del rango de la línea central
  if (
    item.x >= linea.x - tolerancia &&
    item.x <= linea.x + linea.ancho + tolerancia
  ) {
    return true; // Hay colisión
  } else {
    return false; // No hay colisión
  }
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
