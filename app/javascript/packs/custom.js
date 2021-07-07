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
    
    
    let count=0;
    
    document.querySelectorAll('.likebutton').forEach(element => {
        
        var id  = document.querySelectorAll('.likebutton')[count++].id.split("likebtn")[1]
        
        element.addEventListener('click',(event)=>{
            var likes = 1;

            document.getElementById('likes'+id).innerText = likes++
            


        })
    });

    var count1=0;
    // console.log(document.querySelectorAll('.cmntbutton'))

    document.querySelectorAll('.cmntbutton').forEach(element =>{
        var id =document.querySelectorAll('.cmntbutton')[count1++].id.split("cmntbtn")[1]
        element.addEventListener('click',(event)=>{
            // const id = event.target.id
            document.getElementById('comment'+id).focus()
        })
    })



});

