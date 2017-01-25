const React = require('react')
const { Link } = require('react-router')

const Home = () => (
  <div className="list">
    <nav>
      <li><Link to='/about' className='title'>About</Link></li>
      <li><Link to='/playlists' className='title'>Playlists</Link></li>
      <li><Link to='/songs' className='title'>Songs</Link></li>
      <li><Link to='/artists' className='title'>Artists</Link></li>
    </nav>
    <div className="home">
    </div>
  </div>
  )

module.exports = Home
