document.addEventListener("turbolinks:load", function() {
    
    likebtn = document.getElementById("likebtn")
    commentbtn = document.getElementById("cmntbtn")
    sharebtn = document.getElementById("sharebtn")
    var count = 0;
    
    likebtn.addEventListener('click',(event)=>{
        document.getElementById("likes").innerHTML = count++;

    })

    state = false

    commentbtn.addEventListener('click',(event)=>{
    
    document.getElementById('comment_box').classList.remove("d-none")  
    
    document.getElementById('comment_box').classList.add("d-block")  
    })
});