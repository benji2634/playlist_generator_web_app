const React = require('react')
const Router = require('react-router')
const { Link, browserHistory } = Router
const Artist = require('./Artist')

const ArtistList = React.createClass({

  getInitialState(){
    return { searchQuery: '', artists: [] }
  },

  componentDidMount(){
    var url = 'http://localhost:5000/api/artists'
    var request = new XMLHttpRequest()
    request.open('GET', url)

    request.setRequestHeader('Content-Type', "application/json")
    request.withCredentials = true

    request.onload = () => {
       if(request.status === 200){
        console.log("request: ", request.responseText)
        var data = JSON.parse(request.responseText)
        this.setState( { artists: data } )
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
      <div className="list">
        <nav>
          <Link to='/' className='title'>The Playlist</Link>
          <input className='search-box' type='text' placeholder='Search...' value={this.state.searchQuery} onChange={this.doSearch} />
        </nav>

        <div className='songs-container'>
          {
            this.state.artists.filter((artist) => `${artist.name}`.toUpperCase().indexOf(this.state.searchQuery.toUpperCase()) >= 0)
             .map((artist) => (
              <Artist { ...artist } key={artist.artistid}/>
            ))

          }
        </div>
      
      </div>
    )
  }

})

module.exports = ArtistList