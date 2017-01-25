const React = require('react')
const Router = require('react-router')
const { Link, browserHistory } = Router
const SongSet = require('./SongSet')

const SetList = React.createClass({

  getInitialState(){
    return { searchQuery: '', sets: [] }
  },

  componentDidMount(){
    var url = 'http://localhost:5000/api/playlists'
    var request = new XMLHttpRequest()
    request.open('GET', url)

    request.setRequestHeader('Content-Type', "application/json")
    request.withCredentials = true

    request.onload = () => {
       if(request.status === 200){
        console.log("request: ", request.responseText)
        var data = JSON.parse(request.responseText)
        this.setState( { sets: data } )
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

        <div className='list-container'>
          {
            this.state.sets.filter((set) => `${set.name}`.toUpperCase().indexOf(this.state.searchQuery.toUpperCase()) >= 0)
             .map((set) => (
              <SongSet { ...set } key={set.playlistid}/>
            ))

          }
        </div>
      
      </div>
    )
  }

})

module.exports = SetList