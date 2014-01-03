function AutoPhoto(maxWidth, maxHeight, objImg) {
    var img = new Image();
    img.src = objImg.src;
    var hRatio;
    var wRatio;
    var Ratio = 1;
    var w = img.width;
    var h = img.height;
    wRatio = maxWidth / w;
    hRatio = maxHeight / h;
    if (maxWidth == 0 && maxHeight == 0) {
        Ratio = 1;
    } else if (maxWidth == 0) {//
        if (hRatio < 1) Ratio = hRatio;
    } else if (maxHeight == 0) {
        if (wRatio < 1) Ratio = wRatio;
    } else if (wRatio < 1 || hRatio < 1) {
        Ratio = (wRatio <= hRatio ? wRatio : hRatio);
    }
    if (Ratio < 1) {
        w = w * Ratio;
        h = h * Ratio;
    }
    objImg.height = h;
    objImg.width = w;
}

function LoadOn() {
    Chk("Default", "n1");
    Chk("Pro", "n2");
    Chk("About", "n3");
    Chk("News", "n4");
    Chk("Join", "n5");
    Chk("Question", "n6");
    Chk("Contact", "n7");
    Chk("Message", "n7");
}

function Chk(page, id) {
    var url = window.location.href;
    if (url.indexOf(page) > -1) {
        document.getElementById(id).className="on";
    }
}