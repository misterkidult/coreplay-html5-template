function hasBug () {
    // inner should fill outer
    // if inner's height is 0, the browser has the bug

    // set up
    var outer = document.createElement('div');
    var inner = document.createElement('div');
    outer.setAttribute('style', 'display:-ms-flexbox; display:flex; min-height:100vh;');
    outer.appendChild(inner);
    (document.body || document.documentElement).appendChild(outer);

    // test
    var bug = !inner.offsetHeight;

    // remove setup
    outer.parentNode.removeChild(outer);

    return bug;
}

function fixElementHeight (el) {
    // reset any previously set height
    el.style.height = 'auto'; 

    // get el height (the one set via min-height in vh)
    var height = el.offsetHeight; 

    // manually set it in pixels
    el.style.height = height + 'px'; 
}

// var output = document.getElementById('output');
// output.innerHTML = hasBug()?'Browser is buggy':'Browser works correctly';


var el = document.getElementById('flexie') || null;

if(hasBug()) {
  // fix the element now
  if(el === null){
    
    }
    else{
    fixElementHeight(el);
    }
  // // update the height on resize
  // window.addEventListener('resize', function () {
  //   fixElementHeight(el);
  // });
}