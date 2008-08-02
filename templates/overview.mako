<%
   import query, loaddb, html, time
   c = attributes['cursor']

   title = "Crawl Tournament Leaderboard 2008"
%>

<html>
  <head>
    <title>${title}</title>
    <link rel="stylesheet" type="text/css" href="tourney-score.css"/>
  </head>
  <body>
    <%include file="toplink.mako"/>
    <div class="heading">
      <h1>${title}</h1>
    </div>
    <hr/>
    <div class="row">
	  <table class="grouping">
	    <tr>
          <!-- Column one -->
          <td>
            <div>
              <h3>Leading Players</h3>
	          <%include file="overall-scores.mako"/>
            </div>
	      </td>

          <!-- Column two -->
	      <td>
            <div>
	          <h3>Leading Clans</h3>
              ${html.best_clans(c)}
            </div>
	      </td>
 
       	</tr>
	  </table>
    </div>

    <hr/>

    <div class="row">
      <table class="grouping">
        <tr>
          <td>
            <div>
              <h3>Fastest win (turn count)</h3>
              <%include file="fastest-turn.mako"/>
            </div>
            <div>
              <h3>Fastest Win (real time)</h3>
              <%include file="fastest-time.mako"/>
            </div>
          </td>
        </tr>
      </table>
    </div>

    <hr/>

    <div class="row">
      <table class="grouping">
        <tr>
          <!-- Column one, row two -->
          <td>
            <div>
              <h3>First Victory</h3>
              <%include file="first-victory.mako"/>
            </div>
            <div>
	          <h3>First all-rune wins</h3>
	          <%include file="first-allrune.mako"/>
            </div>
          </td>

        </tr>
      <table>
    </div>

    <hr/>

    <div class="row">
      <table class="grouping">
        <tr>
          <!-- Column one, row two -->
          <td>
            <div>
              <h3>Most High Scores</h3>
              ${html.combo_highscorers(c)}
            </div>
          </td>
          <td>
            <div>
	          <h3>Most Uniques Killed</h3>
              <%include file="most-uniques-killed.mako"/>
            </div>
          </td>
        </tr>
      </table>
    </div>

    <hr/>

    <div class="row">
      <table class="grouping">
        <tr>
          <td>
            <div>
	          <h3>Longest Streak</h3>
              ${html.best_streaks(c)}
            </div>

            <div>
	          <h3>Lowest DL at XL1</h3>
              ${html.deepest_xl1_games(c)}
            </div>
	      </td>

        </tr>
      </table>
    </div>

    <hr/>

    <div class="row">
      <table class="grouping">
        <tr>
          <td>
            <div>
	          <h3>Most High Scores: Clan</h3>
              ${html.clan_combo_highscores(c)}
            </div>
	      </td>

	      <td>
            <div>
	          <h3>Most Uniques Killed: Clan</h3>
              ${html.clan_unique_kills(c)}
            </div>
	      </td>
        </tr>
      </table>
    </div>

    <hr/>

    ${html.update_time()}
  </body>
</html>
