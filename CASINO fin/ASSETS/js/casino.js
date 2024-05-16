const start = document.querySelector("#start");
const canvas = document.getElementById("canvas");
const canvDiv = document.querySelector("#canv");
canvas.setAttribute("width", window.innerWidth);
let ctx = canvas.getContext("2d");
let ultimoItemIdColisionado = null;
let colisionDetectada = false;
let movement = false;
let numLongitud = 88;
let timer = setInterval(pintar, 1);
let velocidad = 0;
let vez = 1;
let lineaImg = document.getElementById("linea");

// Aqui hay que poner codigo de java como una puta
// Ya sea para crear todas las imagenes posibles o para ir cambiandolas rara vez

// Van a ser siempre las misma longitud de imagenes y de items

const items = [];
for (let i = 0; i < numLongitud; i++) {
  const item = crearItem(i, i * 200, 0, 200, 150, "black");
  items.push(item);
}
const imgs = [];
for (let i = 1; i <= numLongitud; i++) {
  const img = document.createElement("img");
  img.id = `img${i}`;
  img.src = `https://dummyimage.com/100x100&text=${i}`;
  img.alt = `Image ${i}`;
  document.getElementById("container").appendChild(img);
  imgs.push(img);
}
linea = crearItem(canvas.width / 2, 0, 10, 150, "black");

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
          let ruleta = setTimeout(frenar, 800);
        }
        console.log(item.id);
        ultimoItemIdColisionado = item.id;
      }
      mover(item);
    });
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
    var previousItem = items[items.indexOf(item) - 1];
    if (item.id == 0) {
      previousItem = items[items.length - 1];
    }
    const gap = 200;
    item.x = previousItem.x + gap;
  } else {
    item.x -= velocidad;
  }

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
  const tolerancia = 5;
  if (
    item.x >= linea.x - tolerancia &&
    item.x <= linea.x + linea.ancho + tolerancia
  ) {
    return true; // Hay colisión
  } else {
    return false; // No hay colisión
  }
}
