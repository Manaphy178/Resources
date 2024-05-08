const boton = document.querySelector("#stop");
boton.addEventListener("click", () => {
  const items = document.querySelectorAll("#itemRoulette");
  console.log("entra en el boton");
  items.forEach((item) => {
    item.classList.remove("izq");
    item.classList.add("izqParar")
    console.log("Entra en el fore");
  });
});
