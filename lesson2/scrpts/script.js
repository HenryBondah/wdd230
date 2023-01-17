let date = new Date
let year = date.getFullYear()
console.log(year)
document.querySelector("#year").textContent=year;

document.querySelector("#lastmodified").textContent = document.lastModified;