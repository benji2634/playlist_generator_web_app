const React = require('react')

const Song = (props) => (
  <div className='song'>
    <img src={`images/${props.image}`} className='song-image' />
    <div className='song-details'>
      <h3 className='song-title'>{props.title}</h3>
      <a className='song-lyrics' href={props.lyrics_url}>Lyrics</a>
    </div>
  </div>
)

const { string } = React.PropTypes

Song.propTypes = {
  title: string.isRequired,
  image: string.isRequired,
  lyrics_url: string.isRequired
}


module.exports = Song

