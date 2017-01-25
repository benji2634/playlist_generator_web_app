const React = require('react')
const { Link } = require('react-router')

const Home = () => (
  <div className="home">
    <nav>
      <Link to='/' className='title'>The Playlist</Link>
      <Link to='/songs' className='title'>Songs</Link>
    </nav>
  </div>
)

module.exports = Home
