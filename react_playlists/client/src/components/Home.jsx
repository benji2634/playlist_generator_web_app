const React = require('react')
const { Link } = require('react-router')

const Home = () => (
  <div className="home">
    <h1 className='title'>The Playlist</h1>
    <Link to='/songs'>Songs</Link>
  </div>
)

module.exports = Home
