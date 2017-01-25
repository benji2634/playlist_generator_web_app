const React = require('react')
const Router = require('react-router')
const { Link, browserHistory } = Router
const Song = require('./Song')
// const shuffleArray = require('../functions/randomiser.js')

function shuffleArray(array) {
  let i = array.length - 1
  for (; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1))
    const temp = array[i]
    array[i] = array[j]
    array[j] = temp
  }
  return array
}

const SetListGenerator = React.createClass({

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

  render(){
    const shuffledSongs = shuffleArray(this.state.songs)
    return (
      <div className="list">
        <nav>
          <Link to='/' className='title'>The Playlist</Link>
        </nav>
        <div className='list-container'>
        {
        shuffledSongs.map((song) => (
          <Song { ...song } key={song.songid}/>
          ))
      }
        </div>

     </div>
    )
  }

})

module.exports = SetListGenerator