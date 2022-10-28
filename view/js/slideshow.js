
var hinh = document.querySelector("#hinh");
var index = 0;
var imgArr = [];
document.body.onload = function () {
    for (var i = 0; i < 3; i++) {
        imgArr[i] = new Image();
        imgArr[i].src = "./view/image/anh" + (i + 1) + ".jpg";
    }
    _auto();

}

function _next() {
    index++;
    if (index > 2) index = 0;
    hinh.src = imgArr[index].src;
}

function _pre() {
    index--;
    if (index < 0) index = 2;
    hinh.src = imgArr[index].src;
}
var t;
function _auto() {
    clearInterval(t);
    t = setInterval("_next()", 2000);
}

    

