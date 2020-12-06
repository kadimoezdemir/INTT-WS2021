function listStationIds() {
    var url = "apiRest.php?action=list-station";
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.onload = function()
    {
        var html = "<option value=\"-1\">Alle</option>";
        if(xmlHttp.status == 200)
        {
            var json = JSON.parse(xmlHttp.responseText);
            json.forEach(el => {
                html += "<option value=\"" + el.stationID + "\">" + el.stationID + ", " + el.description + ", " + el.location + "</option>\n";
            })
            document.getElementById('verkaufsstelle').innerHTML = html;

        }
    };
    xmlHttp.open( "GET", url); // false for synchronous request
    xmlHttp.send( null );
    return xmlHttp.responseText;
}

function listFilling() {
    var station = document.getElementById('verkaufsstelle').value;
    var url = "apiRest.php?action=list-filling";
    if(station == "")
        station = "-1";
    url += "&station=" + station;
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.onload = function()
    {
        var html = "<tr><th>Produkt</th><th>Anzahl</th><th>Verkaufsstelle</th><th>Zeitpunkt</th></tr>";
        if(xmlHttp.status == 200)
        {
            var json = JSON.parse(xmlHttp.responseText);
            json.forEach(el => {
                html += "<tr>"
                for (var name in el) {
                    html += "<td>" + el[name] + "</td>";
                }
                html += "</tr>";
            })
            document.getElementById('auffuellungen-liste').innerHTML = html;

        }
    };
    xmlHttp.open( "GET", url); // false for synchronous request
    xmlHttp.send( null );

    return xmlHttp.responseText;
}

function listFillingPlan() {
    var station = document.getElementById('verkaufsstelle').value;
    var url = "apiRest.php?action=generate-plan";
    if(station == "")
        station = "-1";
    url += "&station=" + station;
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.onload = function()
    {
        var html = "<tr><th>Produkt</th><th>Benötigte Anzahl</th><th>Verkaufsstelle</th></tr>";
        if(xmlHttp.status == 200)
        {
            var json = JSON.parse(xmlHttp.responseText);
            json.forEach(el => {
                html += "<tr>"
                html += "<td>" + el['name'] + "</td>";
                html += "<td>" + (el['amount'] +  "</td>");
                html += "<td>" + (el['description'] + ", " + el['location']) + "</td>";
                html += "</tr>";
            })
            document.getElementById('verkaufsstelle-liste').innerHTML = html;

        }
    };
    xmlHttp.open( "GET", url); // false for synchronous request
    xmlHttp.send( null );

    return xmlHttp.responseText;
}

function listSales() {
    var station = document.getElementById('verkaufsstelle').value;
	document.getElementById('verkaufs-liste').innerHTML = "test";
    var url = "apiRest.php?action=list-sales";
    if(station == "")
        station = "-1";
    url += "&station=" + station;
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.onload = function()
    {
        var html = "<tr><th>Produkt</th><th>Anzahl</th><th>Verkaufsstelle</th></tr>";
        if(xmlHttp.status == 200)
        {
            var json = JSON.parse(xmlHttp.responseText);
            json.forEach(el => {
                html += "<tr>"
                for (var name in el) {
                    html += "<td>" + el[name] + "</td>";
                }
                html += "</tr>";
            })
            document.getElementById('verkaufs-liste').innerHTML = html;

        }
    };
    xmlHttp.open( "GET", url); // false for synchronous request
    xmlHttp.send( null );

    return xmlHttp.responseText;
}
