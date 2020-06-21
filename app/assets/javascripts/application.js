// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require_tree .

$("#open-sample-dialog").on("click", function(){
    //leftの値 = (ウィンドウ幅 -コンテンツ幅) ÷ 2
    var leftPosition = (($(window).width() - $("#sample-dialog").outerWidth(true)) / 2);
    //CSSを変更
    $("#sample-dialog").css({"left": leftPosition + "px"});
    //ダイアログを表示する
    $("#sample-dialog").show();
});
//閉じるボタンで非表示
$(".dialog-close").on("click", function(){
    $(this).parents(".dialog").hide();
});