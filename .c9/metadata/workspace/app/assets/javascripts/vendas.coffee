{"filter":false,"title":"vendas.coffee","tooltip":"/app/assets/javascripts/vendas.coffee","undoManager":{"mark":9,"position":9,"stack":[[{"start":{"row":3,"column":0},"end":{"row":4,"column":0},"action":"insert","lines":["",""],"id":2}],[{"start":{"row":4,"column":0},"end":{"row":47,"column":9},"action":"insert","lines":["<script type=\"text/javascript\" src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js\"></script> ","<script type=\"text/javascript\">","","$(document).ready(function() {\t","","\t$('a[name=modal]').click(function(e) {","\t\te.preventDefault();","\t\t","\t\tvar id = $(this).attr('href');","\t","\t\tvar maskHeight = $(document).height();","\t\tvar maskWidth = $(window).width();","\t","\t\t$('#mask').css({'width':maskWidth,'height':maskHeight});","","\t\t$('#mask').fadeIn(1000);\t","\t\t$('#mask').fadeTo(\"slow\",0.8);\t","\t","\t\t//Get the window height and width","\t\tvar winH = $(window).height();","\t\tvar winW = $(window).width();","              ","\t\t$(id).css('top',  winH/2-$(id).height()/2);","\t\t$(id).css('left', winW/2-$(id).width()/2);","\t","\t\t$(id).fadeIn(2000); ","\t","\t});","\t","\t$('.window .close').click(function (e) {","\t\te.preventDefault();","\t\t","\t\t$('#mask').hide();","\t\t$('.window').hide();","\t});\t\t","\t","\t$('#mask').click(function () {","\t\t$(this).hide();","\t\t$('.window').hide();","\t});\t\t\t","\t","});","","</script>"],"id":3}],[{"start":{"row":5,"column":0},"end":{"row":5,"column":31},"action":"remove","lines":["<script type=\"text/javascript\">"],"id":4}],[{"start":{"row":4,"column":111},"end":{"row":5,"column":0},"action":"remove","lines":["",""],"id":5}],[{"start":{"row":4,"column":0},"end":{"row":4,"column":111},"action":"remove","lines":["<script type=\"text/javascript\" src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js\"></script> "],"id":6}],[{"start":{"row":3,"column":0},"end":{"row":4,"column":0},"action":"remove","lines":["",""],"id":7}],[{"start":{"row":45,"column":0},"end":{"row":45,"column":9},"action":"remove","lines":["</script>"],"id":8}],[{"start":{"row":5,"column":0},"end":{"row":44,"column":0},"action":"remove","lines":["$(document).ready(function() {\t","","\t$('a[name=modal]').click(function(e) {","\t\te.preventDefault();","\t\t","\t\tvar id = $(this).attr('href');","\t","\t\tvar maskHeight = $(document).height();","\t\tvar maskWidth = $(window).width();","\t","\t\t$('#mask').css({'width':maskWidth,'height':maskHeight});","","\t\t$('#mask').fadeIn(1000);\t","\t\t$('#mask').fadeTo(\"slow\",0.8);\t","\t","\t\t//Get the window height and width","\t\tvar winH = $(window).height();","\t\tvar winW = $(window).width();","              ","\t\t$(id).css('top',  winH/2-$(id).height()/2);","\t\t$(id).css('left', winW/2-$(id).width()/2);","\t","\t\t$(id).fadeIn(2000); ","\t","\t});","\t","\t$('.window .close').click(function (e) {","\t\te.preventDefault();","\t\t","\t\t$('#mask').hide();","\t\t$('.window').hide();","\t});\t\t","\t","\t$('#mask').click(function () {","\t\t$(this).hide();","\t\t$('.window').hide();","\t});\t\t\t","\t","});",""],"id":9}],[{"start":{"row":4,"column":0},"end":{"row":5,"column":0},"action":"remove","lines":["",""],"id":10}],[{"start":{"row":3,"column":0},"end":{"row":4,"column":0},"action":"remove","lines":["",""],"id":11}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":4,"column":0},"end":{"row":4,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1433878206216,"hash":"c540b8f0ce030b66e37283da8b9a3e7fe3907934"}