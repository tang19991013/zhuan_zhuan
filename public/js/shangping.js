window.addEventListener("load",function(){
    //利用事件委托，为两个按钮绑定事件。
    //获得父元素
    var btns=document.getElementsByClassName("row4")[0];
    //获得要显示元素
    var guding=document.getElementById("tanchu");
    //获得小关闭的小叉叉
    var chacha=guding.lastElementChild;
    //为两个按钮添加弹出事件
    btns.addEventListener("click",function(e){
      var btn=e.target;
      if(btn.nodeName=="A"){
        guding.removeAttribute("class");
      }
    });
    //给小叉叉添加事件
    chacha.addEventListener("click",function(){
      guding.setAttribute("class","hide");
    })
    //获得id值为datu的元素
    var datu=document.getElementById("datu");
    //获得下面的小轮播图
    var imgs=document.getElementsByClassName("tab1");
    //获得它的父元素
    var fater=imgs[0].parentNode.parentNode;
    //利用冒泡绑定事件
    fater.addEventListener("click",function(e){
      var img=e.target;
      if(img.nodeName=="IMG"){
        var src=img.getAttribute("src");
        datu.setAttribute("src",src);
      }
    })
  })