const React = require('react')

const Show = (props) => (
  <div className='song'>
    <img src={`images/${props.image}`} className='song-image' />
    <div className='song-details'>
      <h3 className='song-title'>{props.title}</h3>
      <h4 className='song-lyrics'>Lyrics ({props.lyrics_url})</h4>
    </div>
  </div>
)

const { string, number } = React.PropTypes

Show.propTypes = {
  title: string.isRequired,
  image: string.isRequired,
  lyrics_url: number.isRequired
}


module.exports = Song

