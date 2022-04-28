var API_SERVER = "http://127.0.0.1:6937";

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
    var session = localStorage["session"] || "0";
    var req = $.get({
        "url": API_SERVER + "/ping",
        "headers": {"X-FoolsSessionToken": session}
    });
    req.done(function(x, s, xhr){
        var html = '<ul class="nav navbar-nav">';
        if (x['data']['logged_in']) {
            html += '<li><a href="index.html"><b>Leaderboard</b> (' + x['data']['score'] + ' points)</a></li>';
            html += '<li><a href="play.html"><b>Play</b></a></li>';
            html += '<li><a href="profile.html?' + x['data']['uid'] + '"><b>Profile</b></a></li>';
            html += '<li><a href="settings.html"><b>Settings</b></a></li>';
            html += '</ul><ul class="nav navbar-nav navbar-right">';
            html += '<li><a href="#" onclick="logout()"><span class="glyphicon glyphicon-log-in"></span> &nbsp;<b>Log out</b> (' + entities(x['data']['username']) + ')</a></li>';
        } else {
            html += '<li><a href="index.html"><b>Leaderboard</b></a></li>';
            html += '<li><a href="register.html"><b>Register</b></a></li>';
            html += '</ul><ul class="nav navbar-nav navbar-right">';
            html += '<li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> &nbsp;<b>Log in</b></a></li>';
            localStorage["session"] = "";
        }
        html += '</ul>';
        $("#navbar").html(html);
        $("#loader").css("display", "none");
        $("#content").css("display", "block");
        if (xhr.getResponseHeader("X-FoolsRefreshToken")) {
            localStorage['session'] = xhr.getResponseHeader("X-FoolsRefreshToken");
        }
        window.SESSION = x['data'];
        window.SESSION['sessid'] = localStorage['session'];
        if (window.onPingCompleted) window.onPingCompleted(x);
    });
    req.fail(function(xhr){
        $("#loader").css("display", "none");
        if (xhr.status == 429) modalMessageUnclosable("It appears you are making an excessive amount of requests. To ensure our service is available for everyone at all times, we had to cut you off temporarily. Don't worry, just refresh this page after a minute or two. However, be informed that further incidents like this may result in your IP getting banned.");
        else modalMessageUnclosable("Could not connect to event servers.<br>Wait a few seconds, then refresh this page.<br>If that doesn't work, you could try <a href='#' onclick='logout()'>logging out</a>.");
    });
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