var baseimgurl ='https://www.nba.com/.element/img/1.0/teamsites/logos/teamlogos_80x64/' //ends with team_abbr.gif
var basesvgurl = 'https://cdn.nba.com/logos/nba/TEAM_ID/primary/L/logo.svg'
window.addEventListener('load', (event) => {
    var img_tags = document.querySelectorAll('.team_logo');

    img_tags.forEach(tag => {
        //tag.src = baseimgurl + tag.id.toLowerCase() + '.gif';
        //console.log(tag);
        tag.src = basesvgurl.replace("TEAM_ID", tag.getAttribute('team_id'));
        tag.height = 300;
        tag.width = 300;
    })


    



})


