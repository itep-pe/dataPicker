<%-- 
    Document   : timepicker
    Created on : 16/03/2015, 09:53:11
    Author     : jefferson.lima
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link rel="stylesheet" type="text/css" href="./css/datepicker/jquery.datetimepicker.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="ls-steps-content" id="step2">
            <label class="ls-label col-md-8">
                <b class="ls-label-text">Data de início</b>
                <input type="text" name='dataHoraInicio' placeholder="Selecione uma data válida (*)" class="required" required id="default_datetimepicker1" placeholder="Selecione o horário"/>
                <br><br>
            </label>

            <label class="ls-label col-md-8">
                <br><br>
                <b class="ls-label-text">Data final</b>
                <input type="text" name='dataHoraFim' placeholder="Selecione uma data válida (*)" class="required" required id="default_datetimepicker2"/>
            </label>           
        </div>

        <script src="./js/datepicker/jquery.js"></script>
        <script src="./js/datepicker/jquery.datetimepicker.js"></script>
        <script>/*
         window.onerror = function(errorMsg) {
         $('#console').html($('#console').html()+'<br>'+errorMsg)
         }*/
            $('#datetimepicker').datetimepicker({
                dayOfWeekStart: 1,
                lang: 'pt-BR',
                disabledDates: ['1986/01/08', '1986/01/09', '1986/01/10'],
                startDate: '1986/01/05'
            });
            $('#datetimepicker').datetimepicker({value: '2015/04/15 05:03', step: 10});

            $('.some_class').datetimepicker();

            $('#default_datetimepicker1').datetimepicker({
                formatTime: 'H:i',
                formatDate: 'd.m.Y',
                defaultDate: new Date(),
                defaultTime: new Date(),
                timepickerScrollbar: false
            });

            $('#default_datetimepicker2').datetimepicker({
                formatTime: 'H:i',
                formatDate: 'd.m.Y',
                defaultDate: new Date(),
                defaultTime: new Date(),
                timepickerScrollbar: false
            });

            var logic = function (currentDateTime) {
                if (currentDateTime.getDay() == 6) {
                    this.setOptions({
                        minTime: '11:00'
                    });
                } else
                    this.setOptions({
                        minTime: '8:00'
                    });
            };
            var dateToDisable = new Date();
            dateToDisable.setDate(dateToDisable.getDate() + 2);
            $('#datetimepicker11').datetimepicker({
                beforeShowDay: function (date) {
                    if (date.getMonth() == dateToDisable.getMonth() && date.getDate() == dateToDisable.getDate()) {
                        return [false, ""]
                    }

                    return [true, ""];
                }
            });
        </script>
    </body>
</html>
