const React = require('react')
const Router = require('react-router')
const { Link, browserHistory } = Router
const Song = require('./Song')

const Playlist = React.createClass({

  getInitialState(){
    return { searchQuery: '', songs: [] }
  },

  componentDidMount(){
    var url = 'http://localhost:5000/api/songs'
    var request = new XMLHttpRequest()
    request.open('GET', url)

    request.setRequestHeader('Content-Type', "application/json")
    request.withCredentials = true

    request.onload = () => {
       if(request.status === 200){
        console.log("request: ", request.responseText)
        var data = JSON.parse(request.responseText)
        this.setState( { songs: data } )
       } else{
        browserHistory.goBack()
       }
    }
    request.send(null)
  },

  doSearch(event){
    this.setState({searchQuery: event.target.value})
  },

  render(){
    return(
      <div className="playlist">
        <nav>
          <Link to='/' className='title'>The Playlist</Link>
          <input className='search-box' type='text' placeholder='Search...' value={this.state.searchQuery} onChange={this.doSearch} />
        </nav>

        <div className='songs-container'>
          {
            this.state.songs.filter((song) => `${song.title}`.toUpperCase().indexOf(this.state.searchQuery.toUpperCase()) >= 0)
             .map((show) => (
              <Song { ...song } key={song.songid}/>
            ))

          }
        </div>
      
      </div>
    )
  }

})

module.exports = Playlist