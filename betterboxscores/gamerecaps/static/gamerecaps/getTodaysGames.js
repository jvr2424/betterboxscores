window.addEventListener('load', (event) => {
    var games = get_data();
    games.then(displayData);
    
  });


async function get_data() {
    //const proxyurl = "https://cors-anywhere.herokuapp.com/";
    const endpoint = 'https://cdn.nba.com/static/json/liveData/scoreboard/todaysScoreboard_00.json';
    const response = await fetch(endpoint,{method: "GET", // POST, PUT, DELETE, etc.
    headers: {
      // the content type header value is usually auto-set
      // depending on the request body
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "text/plain;charset=UTF-8"
    },
    } );//{mode: 'no-cors'} proxyurl
    const json_response = await response.json();
    console.log(json_response);
    return json_response;
    }


function displayData(data){
    console.log('in fucntion');
    console.log(data);
    const gameDiv = document.querySelector('#live-scores');
    data.forEach(game, index => {
        var lastInnerDiv = '';
        if (index % 2 == 0) {
            lastInnerDiv = '<div class="w-100 d-none d-sm-block d-md-none"><!-- wrap every 2 on sm--></div>';
            if (index % 4 == 0) {
                lastInnerDiv+='<div class="w-100 d-none d-md-block d-lg-none"><!-- wrap every 3 on md--></div>';
            }
        } else if (index % 3 == 0) {
            lastInnerDiv = '<div class="w-100 d-none d-md-block d-lg-none"><!-- wrap every 3 on md--></div>';
        } else if (index % 5 == 0) {
            lastInnerDiv = '<div class="w-100 d-none d-xl-block"></div>';
        }
        gameDiv.innerHTML = gameDiv.innerHTML + `
        <div class="card mb-4 shadow-sm">
            <div class="card-header">
            <h4 class="my-0 font-weight-normal">
                <img class="team_logo" team_id="${game.awayTeam.teamId}" src="https://www.nba.com/.element/img/1.0/teamsites/logos/teamlogos_80x64/${game.awayTeam.teamTricode.toLowerCase()}.gif" width="60" height="48"></img> 
                vs 
                <img class="team_logo" team_id="${game.homeTeam.teamId}" src="https://www.nba.com/.element/img/1.0/teamsites/logos/teamlogos_80x64/${game.homeTeam.teamTricode.toLowerCase()}" width="60" height="48"></img></h4>
            </div>
            <div class="card-body">
            <h1 class="card-title pricing-card-title">${game.awayTeam.score} - ${game.awayTeam.score}</h1>
            <ul class="list-unstyled mt-3 mb-4">
                <li>QTR Scores</li>
                <li>4 Factors</li>
                <li>Leading Scorer 1</li>
                <li>Leading Scorer 2</li>
            </ul>
                <a href="/todaysgames/${game.gameId}">
                <button type="button" class="btn btn-lg btn-block btn-outline-primary">See details</button>
                </a>

            </div>
        </div>
        ` + lastInnerDiv;
    })

}