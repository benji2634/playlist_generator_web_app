var React = require('react');
var ReactDOM = require('react-dom');
var Main = require('./components/Main.jsx');
const ReactRouter = require('react-router')
const {Router, Route, IndexRoute, hashHistory} = ReactRouter
const Home = require('./components/Home.jsx')
const SongList = require('./components/SongList.jsx')
const ArtistList = require('./components/ArtistList.jsx')
const SetList = require('./components/SetList.jsx')
const About = require('./components/About.jsx')

const App = React.createClass({
  render() {
    return (
      <Router history={hashHistory}>
        <Route path='/' component={Main} >
          <IndexRoute component={Home} />
          <Route path='/songs' component={SongList} />
          <Route path='/artists' component={ArtistList} />
          <Route path='/playlists' component={SetList} />
          <Route path='/about' component={About} />
        </Route>
      </Router>
    )
  }
});

window.onload = function(){
  ReactDOM.render(
    <App />,
    document.getElementById('app')
  );
}
