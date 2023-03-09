var messagedate = new Date();
if (messagedate.getDay()==2 || messagedategetDate.getDay()==4){
    document.querySelector("#meet-greet").classList.add('active')
}
function toggleManu() {
    document.getElementById("primaryNav").classList.toggle("open");
    document.getElementById("hamburgerBtn").classList.toggle("open");

}

const x = document.getElementById('hamburgerBtn')
x.onclick = toggleManu;