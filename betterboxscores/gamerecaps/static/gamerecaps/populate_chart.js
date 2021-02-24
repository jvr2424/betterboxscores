var baseimgurl ='https://www.nba.com/.element/img/1.0/teamsites/logos/teamlogos_80x64/' //ends with team_abbr.gif
var away_team_abbr = '';
var home_team_abbr = '';

window.addEventListener('load', (event) => {
    var img_tags = document.querySelectorAll('.team_logo'); 
    away_team_abbr = img_tags[0].id.toLowerCase();
    home_team_abbr = img_tags[1].id.toLowerCase();

    var data = get_data()
    data.then(build_chart)
    
  });
  
//formatter functions
function percentFormatter(params) {
  return Math.round(params.value * 100) + '%'
}

function plusMinusFormatter(params) {
  if (params.value >0){
    return '+' + params.value
  }
  else {
    return params.value
  }
}

function formatStarters(params) {
  if(params.data.is_starter){
    return {fontWeight: 'bold'};
  }
  return null;
}

//sorting functions
function starterComparator(valueA, valueB, nodeA, nodeB) {
  
  if (nodeA.data.is_starter===nodeB.data.is_starter){
      if (valueA == valueB) {
        return 0;
    }
    return (valueA > valueB) ? 1 : -1;
    }
  else if (nodeA.data.is_starter) {
    return 1
  
  }
  else if (nodeB.data.is_starter) {
    return -1
  }
}


//evnts
function addLogoToGrid(event){
  console.log(event);
  var team_abbr =event.api.rowModel.rowsToDisplay[0].data.team_abbr;
  console.log(team_abbr);
  var left_header = document.querySelectorAll('div.ag-pinned-left-header');
  if (team_abbr == away_team_abbr) {
    var index = 0;
  } else {
    var index = 1;
  }

  console.log(left_header[index]);
  var header_span = left_header[index].querySelector('span[ref="agLabel"]');
  header_span.innerHTML = '<img src="' + baseimgurl + team_abbr + '.gif"></img>'

}



async function get_data() {
    var game_id = window.location.href.split('/').slice(-1)[0];
    var endpoint = '/api/games-players/';
    endpoint = endpoint + game_id;
    console.log(endpoint);
    const response = await fetch(endpoint);
    const json_response = await response.json();
    console.log(json_response);
    return json_response;
}


  function build_chart(data) {
      // specify the columns
      var columnDefs = [
        { field:'player' ,headerName: 'Player',pinned: 'left', width:125, cellStyle:formatStarters },
        { field:'minutes' ,headerName: 'Min', comparator: starterComparator, sort: 'desc'},
        { field:'is_starter' ,headerName: 'Started',hide: true,suppressColumnsToolPanel: true},
        { field:'team_abbr' ,headerName: 'Team Abbreviation',hide: true,suppressColumnsToolPanel: true},

        {headerName: 'Scoring',
        children: [
          { field:'points' ,headerName: 'PTS', filter: 'agNumberColumnFilter'},
          { field:'fgm' ,headerName: 'FGM', filter: 'agNumberColumnFilter'},
          { field:'fga' ,headerName: 'FGA', filter: 'agNumberColumnFilter'},
          { field:'ftm' ,headerName: 'FTM', columnGroupShow: 'open',filter: 'agNumberColumnFilter'},
          { field:'fta' ,headerName: 'FTA', columnGroupShow: 'open', filter: 'agNumberColumnFilter'},
          { field:'rim_made' ,headerName: 'RimM', columnGroupShow: 'open', filter: 'agNumberColumnFilter' },
          { field:'rim_attempted' ,headerName: 'RIMA', columnGroupShow: 'open', filter: 'agNumberColumnFilter' },
          { field:'three_made' ,headerName: '3ptM', filter: 'agNumberColumnFilter'},
          { field:'three_attempted' ,headerName: '3ptA', filter: 'agNumberColumnFilter'},
          { field:'efg' ,headerName: 'EFG%', columnGroupShow: 'open', valueFormatter: percentFormatter , filter: 'agNumberColumnFilter' },
          { field:'ts' ,headerName: 'TS%', columnGroupShow: 'open', valueFormatter: percentFormatter, filter: 'agNumberColumnFilter' },
          { field:'usg' ,headerName: 'USG%', columnGroupShow: 'open', valueFormatter: percentFormatter, filter: 'agNumberColumnFilter'},
        ]},
        {headerName: 'Passing',
        children: [
          { field:'to' ,headerName: 'TO', columnGroupShow: 'open', filter: 'agNumberColumnFilter'},
          { field:'ast' ,headerName: 'AST', filter: 'agNumberColumnFilter' },
          { field:'rim_ast' ,headerName: 'Rim AST', columnGroupShow: 'open', filter: 'agNumberColumnFilter'},
        ]},
        {headerName: 'Misc',
        children: [
          { field:'reb' ,headerName: 'Reb', filter: 'agNumberColumnFilter'},
          { field:'oreb' ,headerName: 'O Rebs', columnGroupShow: 'open', filter: 'agNumberColumnFilter'},
          { field:'steals' ,headerName: 'Stl', columnGroupShow: 'open', filter: 'agNumberColumnFilter'},
          { field:'blocks' ,headerName: 'Blk', columnGroupShow: 'open', filter: 'agNumberColumnFilter'},
          { field:'fouls' ,headerName: 'Fls', filter: 'agNumberColumnFilter'},
        ]},
        {headerName: 'Impact',
        children: [
          { field:'plus_minus' ,headerName: '+/-', valueFormatter:plusMinusFormatter, filter: 'agNumberColumnFilter'},
          { field:'o_rtg' ,headerName: 'O RTG', columnGroupShow: 'open', filter: 'agNumberColumnFilter'},
          { field:'d_rtg' ,headerName: 'D RTG', columnGroupShow: 'open', filter: 'agNumberColumnFilter'},
          { field:'net_rtg' ,headerName: 'Net', columnGroupShow: 'open',valueFormatter:plusMinusFormatter, filter: 'agNumberColumnFilter'},
          { field:'pace' ,headerName: 'Pace', columnGroupShow: 'open', filter: 'agNumberColumnFilter'},
          { field:'o_poss' ,headerName: 'O Poss', columnGroupShow: 'open', filter: 'agNumberColumnFilter'},
          { field:'d_poss' ,headerName: 'D Poss', columnGroupShow: 'open', filter: 'agNumberColumnFilter'}
        ]}
  

    ];
    var away_parsed_data = []
    var home_parsed_data = []
    data.forEach(playerX =>{
      new_player = {
        player: playerX.player.last_name,
        minutes: playerX.minutes,
        is_starter: playerX.is_starter,
        points: playerX.points,
        fgm: playerX.field_goals_made,
        fga: playerX.field_goals_attempted,
        ftm: playerX.free_throws_made,
        fta: playerX.free_throws_attempted,
        rim_made: playerX.rim_made,
        rim_attempted: playerX.rim_attempted,
        three_made: playerX.threes_made,
        three_attempted: playerX.threes_attempted,
        efg: parseFloat(playerX.effective_field_goal_pct),
        ts: parseFloat(playerX.true_shooting_pct),
        to: playerX.turnovers,
        usg: parseFloat(playerX.usage_pct) / 100,
        ast: playerX.assists,
        rim_ast: playerX.rim_assists,
        reb: playerX.rebounds,
        oreb: playerX.offensive_rebounds,
        steals: playerX.steals,
        blocks: playerX.blocks,
        fouls: playerX.fouls,
        plus_minus: playerX.plus_minus,
        o_rtg: parseFloat(playerX.offensive_rating),
        d_rtg: parseFloat(playerX.defensive_rating),
        net_rtg: parseFloat((parseFloat(playerX.offensive_rating)- parseFloat(playerX.defensive_rating)).toFixed(2)),
        pace: parseFloat(playerX.pace),
        o_poss:playerX.offensive_possessions,
        d_poss:playerX.defensive_possessions
      }

      

      
      if (playerX.is_home) {
        new_player['team_abbr'] =home_team_abbr;
        home_parsed_data.push(new_player);
        
      }
      else {
        new_player['team_abbr'] =away_team_abbr;
        away_parsed_data.push(new_player);
      }
    })  
    console.log(away_parsed_data);
    console.log(home_parsed_data);
      // specify the data
      var awayRowData =away_parsed_data;
      var homeRowData =home_parsed_data;
      
      


      // let the grid know which columns and what data to use
      var awayGridOptions = {
        columnDefs: columnDefs,
        defaultColDef: {
          sortable: true, 
          filter: true ,
          floatingFilter: false, 
          width: 100,
          resizable: true,         
        },
        
        //onFirstDataRendered: headerHeightSetter,
        //onColumnResized: headerHeightSetter,
        rowData: awayRowData,
        animateRows: true,
        //headerHeight: 150,
        groupHeaderHeight:80,
        domLayout: 'autoHeight',

        //events
        onGridReady: addLogoToGrid,
      };
      
      var homeGridOptions = {
        columnDefs: columnDefs,
        defaultColDef: {
          sortable: true, 
          filter: true , 
          floatingFilter: false,
          width: 100,
          resizable: true,
        },
        //onFirstDataRendered: headerHeightSetter,
        //onColumnResized: headerHeightSetter,
        rowData: homeRowData,
        animateRows: true,
        //headerHeight: 150,
        groupHeaderHeight:80,
        domLayout: 'autoHeight',

        //events
        onGridReady: addLogoToGrid,
      };
      
      
      // lookup the container we want the Grid to use
      var awayGridDiv = document.querySelector('#away_grid');
      var homeGridDiv = document.querySelector('#home_grid');
      
      


      // create the grid passing in the div to use together with the columns & data we want to use
      new agGrid.Grid(awayGridDiv, awayGridOptions);
      new agGrid.Grid(homeGridDiv, homeGridOptions);



      function headerHeightSetter() {
        var padding = 20;
        var height = headerHeightGetter() + padding;
        awayGridOptions.api.setHeaderHeight(height);
        homeGridOptions.api.setHeaderHeight(height);
      }
      function headerHeightGetter() {
        var columnHeaderTexts = [
            ...document.querySelectorAll('.ag-header-cell-text'),
        ];
        var clientHeights = columnHeaderTexts.map(
            headerText => headerText.clientHeight
        );
        var tallestHeaderTextHeight = Math.max(...clientHeights);
      
        return tallestHeaderTextHeight;
      }
  }
