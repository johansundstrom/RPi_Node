window.onload = function() {
    var url,
        i,
        jqxhr;

    for (i = 0; i < 2; i++) {
        url = document.URL + 'inputs/' + i;
        jqxhr = $.getJSON(url, function(data) {
            console.log('API response received');
            $('#input').append('<div>GPIO input port ' + data['gpio'] +
                ' on pin ' + data['pin'] +
                ' value is ' + data['value'] + '<div>');
        });
    }
};

setInterval( function ()  {
    for  (i  in  ports)  {
        // call the API for each input port here
    }
},  1000);  // setInterval to 1 second