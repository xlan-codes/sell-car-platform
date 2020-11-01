//For example, 1024x768:
// alert(window.screen.width+"x"+window.screen.height);

function getWindowSize() {
    return window.screen.width
}

function setWidth() {
    if (!localStorage.getItem('screen_width')) {
        localStorage.setItem('screen_width', getWindowSize())
    }
}

function resp4k() {
    // document.getElementsByClassName("container").add('container-fluid');
    // document.getElementsByClassName("container").remove('container');

    console.log(document);
    list = document.getElementsByClassName("container")
    if (list.length != 0) {    
        for (let i = 0; i < list.length; i++) {
            list[i].classList.add("container-fluid");
            list[i].classList.remove("container");
        } 

        // list.forEach(element => {
        //     element.classList.add("container-fluid");
        //     element.classList.remove("container");
        // });
    }
}

function isOver4k() {
    if (getWindowSize() > 2000) {
        resp4k()
    }
}

if (getWindowSize() > 2000) {
    // resp4k()
    setWidth();
}