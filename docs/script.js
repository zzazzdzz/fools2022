
function entities(s){
    return $('<div>').text(s).html();
}

function formatTimeDiff(diff){
    var time_split = [];
    time_split.push(diff % 60);
    diff = Math.floor(diff / 60);
    time_split.push(diff % 60);
    diff = Math.floor(diff / 60);
    time_split.push(diff % 24);
    diff = Math.floor(diff / 24);
    time_split.push(diff);
    time_split.reverse();
    var suffixes = ["days", "hours", "minutes", "seconds"];
    for (var i=0; i<suffixes.length; i++){
        suffixes[i] = time_split[i] + " " + suffixes[i];
        // if (time_split[i] == 0) suffixes.splice(i, 1);
    }
    return suffixes.join(", ");
}

function formatPlace(x){
    if (x >= 10 && x <= 19) return x + "th";
    return x + ["th", "st", "nd", "rd", "th", "th", "th", "th", "th", "th", "th"][x % 10];
}

function updateTimers(){
    var now = parseInt(+new Date() / 1000);
    var untilEventEnd = 1649592000 - now;
    var untilServerShutdown =  1651147200 - now;
    if (untilEventEnd > 0){
        $('#countdown').html(formatTimeDiff(untilEventEnd) + " until the end of the event.");
    }else{
        if (untilServerShutdown > 0){
            $('#countdown').html("The event has ended. " + formatTimeDiff(untilServerShutdown) + " until server shutdown and source code release.");
        }else{
            $('#countdown').html("The event has ended. Thanks for participating!");
        }
    }
}

function buildNavbar(){
    $("#navbar").html('<ul class="nav navbar-nav"><li><a href="index.html"><b>Leaderboard</b></a></li></ul>');
    $("#loader").css("display", "none");
    $("#content").css("display", "block");
    if (window.onPingCompleted) window.onPingCompleted(null);
}

function modalMessage(m){
    $("<div class='f-modal-window'>" + m + "<br><br><a href='#' rel='modal:close' class='btn btn-default'>OK</a></div>").modal({escapeClose: false, clickClose: false, showClose: false});
}

function modalMessageUnclosable(m){
    $("<div class='f-modal-window'>" + m + "</div>").modal({escapeClose: false, clickClose: false, showClose: false});
}

function modalMessageWithRedirect(m, p){
    $("<div class='f-modal-window'>" + m + "<br><br><a href='#' onclick='window.location=\"" + p + "\"' class='btn btn-default'>OK</a></div>").modal({escapeClose: false, clickClose: false, showClose: false});
}

function modalYesNo(m, f){
    $("<div class='f-modal-window'>"+m+"<br><br><a href='#' class='btn btn-success' onclick='"+f+"'>Yes</a> <a href='#' rel='modal:close' class='btn btn-default'>No</a></div>").modal({escapeClose: false, clickClose: false, showClose: false});
}

$(document).ready(function(){
    updateTimers();
    buildNavbar();
    setInterval(updateTimers, 1000);
});

var loader = null;
var disabledElms = [];

function loaderStart(e, disableList){
    loader = e;
    $(e).attr("data-tx", $(e).html());
    disabledElms = disableList;
    $(e).html("<img src='img/loading.svg' class='f-inline-loader'>");
    for (var i=0; i<disableList.length; i++){
        disableList[i].disabled = true;
    }
    e.disabled = true;
}

function loaderFinish(){
    $(loader).html($(loader).attr("data-tx"));
    for (var i=0; i<disabledElms.length; i++){
        disabledElms[i].disabled = false;
    }
    loader.disabled = false;
}

function isModalDisplayed(){
    var w = $('.f-modal-window');
    if (!w.length) return false;
    if (w.css("display") == "none") return false;
    return true;
}

function unixTimestamp(){
    return Math.floor((+new Date()) / 1000);
}

function logout(){
    localStorage['session'] = '';
    window.location.href = "index.html";
}