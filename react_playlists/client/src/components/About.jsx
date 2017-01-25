const React = require('react');

class About extends React.Component {
  render(){
    return(
      <div className="about">
        <h4> About </h4>
        <p> The Playlist are three great players, playing great songs! Fronted by David McKendrick, these guys have been taking the industry by storm with the Indie, pop, rock medleys and high energy sets. Don't be fooled, even though there is only three of them, they sound massive and they're accompanied on a few of the big floor fillers with backing tracks. You really need to see these guys live and meet them to get what they do. So get your tickets or book your space to their next live gig!  </p>

        <div>
          <iframe className="video" src="https://www.youtube.com/embed/dWKZd7LvBIE?controls=1">
          </iframe>
        </div>
      </div>
    )
  }
}

module.exports = About;
