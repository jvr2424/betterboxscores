var data = get_data()
async function get_data() {
    var game_id = window.location.href.split('/').slice(-1)[0];
    var endpoint = 'http://127.0.0.1:8000/api/games-players/';
    endpoint = endpoint + game_id;
    console.log(endpoint);
    const response = await fetch(endpoint);
    const json_response = await response.json();
    console.log(json_response);
    return json_response;
}


//window.addEventListener('load', (event) => { });