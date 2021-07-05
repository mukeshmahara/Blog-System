document.addEventListener("turbolinks:load", function() {

    let themeToggler = document.getElementById("theme-toggler");
    let toggleDark = document.getElementById("toggle-label-dark");
    let toggleLIGHT = document.getElementById("toggle-label-light");

    themeToggler.onclick = () => {
    if (themeToggler.checked == true) {
        document.body.classList.add("bg-dark");
        toggleDark.classList.add("d-none");
        toggleLIGHT.classList.add("d-block");
        document.getElementById("box").classList.add("bg-dark");
        document.getElementById("box").classList.add("text-light");
        
    } else {
        document.body.classList.remove("bg-dark");
        toggleDark.classList.remove("d-none");
        toggleLIGHT.classList.remove("d-block");
        document.getElementById("box").classList.remove("bg-dark");
        document.getElementById("box").classList.remove("text-light");

    }
    };

    
    likebtn = document.getElementById("likebtn")
    commentbtn = document.getElementById("cmntbtn")
    sharebtn = document.getElementById("sharebtn")
    var count = 0;
    
    likebtn.onclick=()=>{
        document.getElementById("likes").innerHTML = count++;

    }

    state = false

    commentbtn.addEventListener('click',(event)=>{
    
    document.getElementById('comment_box').classList.remove("d-none")  
    
    document.getElementById('comment_box').classList.add("d-block")  
    })




    
});

