function toggleManu() {
    document.getElementById("primaryNav").classList.toggle("open");
    document.getElementById("hamburgerBtn").classList.toggle("open");

}

const x = document.getElementById('hamburgerBtn')
// x.onclick = toggleManu;

let date = new Date

const dateOptions = {
    year:'2-digit',
    month:'long',
    day:'numeric'

}
let year = date.getFullYear()
console.log(year)
let years = document.querySelectorAll(".year");
console.log(years)

function displayYear(x) {
    for(let i=0; i<x.length; i++) {
        x[i].textContent = date.toLocaleDateString('en-US', dateOptions);
    }
}

displayYear(years)
years.map(displayYear)
document.querySelector("#lastmodified").textContent = document.lastModified;