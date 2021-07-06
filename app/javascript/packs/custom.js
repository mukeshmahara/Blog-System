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

    var blog_id =  ($('#meroId').data('id'))
    console.log(blog_id)

    likebtn = document.getElementById("likebtn"+blog_id)
    console.log(likebtn)
    commentbtn = document.getElementById("cmntbtn"+blog_id)
    console.log(commentbtn)

    sharebtn = document.getElementById("sharebtn"+blog_id)
    console.log(sharebtn)
    var count = 1;
    
    
    likebtn.onclick=()=>{
        document.getElementById("likes").innerHTML = count++;
        
    }
    commentbtn.onclick=()=>{
        document.getElementById('comment'+blog_id).focus()

    }

});

